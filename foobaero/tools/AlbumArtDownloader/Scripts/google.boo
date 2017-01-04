import AlbumArtDownloader.Scripts
import util

class GoogleImage(AlbumArtDownloader.Scripts.IScript):
	Name as string:
		get: return "GoogleImage"
	Version as string:
		get: return "0.9"
	Author as string:
		get: return "Alex Vallat"
	def Search(artist as string, album as string, results as IScriptResults):
		artist = StripCharacters("&.'\";:?!", artist)
		album = StripCharacters("&.'\";:?!", album)

		imagesHtml = GetPageIsoLatin1("http://images.google.com/images?gbv=1&q=" + EncodeUrl(artist + " " + album))

		imageMatches = @/(?i)\/imgres\?imgurl=(?<fullSize>[^&]+)&imgrefurl=(?<infoUri>[^&]+)[^>]+?&h=(?<height>\d+)&w=(?<width>\d+)[^>]+?&tbnid=(?<tbnid>[^&]+)/.Matches(imagesHtml)
		titleMatches = @/(?i)<font [^>]+? size=-1>(?<title>.+?)<br>/.Matches(imagesHtml)
		
		results.EstimatedCount = imageMatches.Count
		
		for i in range(imageMatches.Count):
			title = System.Web.HttpUtility.HtmlDecode(/<\/?b>/.Replace(titleMatches[i].Groups["title"].Value, ""))
			imageMatch = imageMatches[i]
			fullSize = imageMatch.Groups["fullSize"].Value
			infoUri = imageMatch.Groups["infoUri"].Value
			height = System.Int32.Parse(imageMatch.Groups["height"].Value)
			width = System.Int32.Parse(imageMatch.Groups["width"].Value)
			tbnid = imageMatch.Groups["tbnid"].Value
			
			results.Add("http://tbn0.google.com/images?q=tbn:${tbnid}", title, infoUri, width, height, fullSize);


	def RetrieveFullSizeImage(fullSizeCallbackParameter):
		return fullSizeCallbackParameter

