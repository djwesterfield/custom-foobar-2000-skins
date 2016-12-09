import System
import System.Text.RegularExpressions
import AlbumArtDownloader.Scripts
import util

class EncyclopaediaMetallum(AlbumArtDownloader.Scripts.IScript):
	Name as string:
		get: return "Encyclopaedia Metallum"
	Version as string:
		get: return "0.3"
	Author as string:
		get: return "Alex Vallat"
	def Search(artist as string, album as string, results as IScriptResults):
		artist = StripCharacters("&.'\";:?!", artist)
		album = StripCharacters("&.'\";:?!", album)

		//Retrieve the search results page
		searchResultsHtml as string = GetPage("http://www.metal-archives.com/advanced.php?band_name=${EncodeUrl(artist)}&release_name=${EncodeUrl(album)}")
		
		matches = Regex("href=\"release\\.php\\?id=(?<id>(?<idPart>\\d){4,})&[^\"]+\">(?<name>.*?)</a>", RegexOptions.IgnoreCase).Matches(searchResultsHtml)
		
		results.EstimatedCount = matches.Count
		
		for match as Match in matches:
			name = match.Groups["name"].Value.Replace("<strong>","").Replace("</strong>", "")
			
			idParts = match.Groups["idPart"].Captures
			url = String.Format("http://www.metal-archives.com/images/{0}/{1}/{2}/{3}/{4}.jpg", idParts[0], idParts[1], idParts[2], idParts[3], match.Groups["id"].Value)

			results.Add(url, name, null, -1, -1, null, CoverType.Front);

	def RetrieveFullSizeImage(fullSizeCallbackParameter):
		return fullSizeCallbackParameter;