/*
	READ ME:
		
		//=========================================================================================\\
		
		This asset contains the basics of using a visual elements manifest for
		windows 8 through to 10. It can be used to give win32 apps and games a
		custom styled windows start screen icon.
		
		Apps like google chrome and visual studio 2017 conmtain a gray background
		rather than using your selected windows colour.
		Bellow are some basic instructions to set a custom icon up...
		
		STEP 1:		Rename YOUR_GAME_NAME.VisualElementsManifest.xml by replacing
					YOUR_GAME_NAME with your games executable name...
					(EG if your game is called lorem_ipsum, replace text with lorem_ipsum)
		
		STEP 2:		Edit the icons in the icon folder to be what you want to display
					on the start screen...
					
					The 150x150.png will display for medium sized icons.
					The 70x70.png will display for small sized icons.
					
		STEP 3:		Edit values inside the visual manifest file...
		
					ShowNameOnSquare150x150Logo: on or off to display the apps name on start screen.
					Square150x150Logo: Location of the medium icon.
					Square70x70Logo: Location of the small icon.
					ForegroundText: light or dark, whether the name should be white or black.
					BackgroundColor: The tiles main colour, can be colour name or HEX value.
		
		
		To ensure everything works as it should, I recommend you read the official documentation
		provided by Microsoft at the URL: 
			https://msdn.microsoft.com/en-us/library/windows/apps/xaml/dn449733
		
		\\=========================================================================================//
*/