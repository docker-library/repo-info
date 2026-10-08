## `golang:1-windowsservercore-ltsc2025`

```console
$ docker pull golang@sha256:c77f52763985b6fba722c653d42d6da89b2dc3ca143f701d84b42c187dee2f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `golang:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull golang@sha256:2b3bbc465ea27c5a9b72219a5c84efe00b087e0ebdaf2561fb3157a3866a6893
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2583087881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f9bb52845749fe409172347f3a395ed59b5f0e44246e499f7f2974769e4f91`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 17:14:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 17:14:48 GMT
ENV GIT_VERSION=2.48.1
# Thu, 08 Oct 2026 17:14:50 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 08 Oct 2026 17:14:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 08 Oct 2026 17:14:53 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 08 Oct 2026 17:16:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:16:05 GMT
ENV GOPATH=C:\go
# Thu, 08 Oct 2026 17:16:10 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 17:16:11 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:17:48 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:17:50 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb0dd11b7721ec16907361abb43a561c48b921d885729bc537e697d6e1bbea`  
		Last Modified: Thu, 08 Oct 2026 17:17:58 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1e9136a57c57290eeb67bc36e834351d42e9fb4c34c58a2471e9c1905198c4`  
		Last Modified: Thu, 08 Oct 2026 17:17:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0586a78e132e08fc8d84ab7e6cff5cf2930956ad759e2fb2e1c78b68e710e347`  
		Last Modified: Thu, 08 Oct 2026 17:17:57 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbefb6f246be287f6bf0a872cb0908974b4980ddc6f7cbc4d1c8fbe00151db3a`  
		Last Modified: Thu, 08 Oct 2026 17:17:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6716ef50478c3c3d00650d1d96f30c798bcf56dc999898bad8c6fac50f33905a`  
		Last Modified: Thu, 08 Oct 2026 17:17:56 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62825234b9b2c2c370a5b38dfaea87635b69a572e5ab94c9bcf8fb1efb42a36`  
		Last Modified: Thu, 08 Oct 2026 17:18:02 GMT  
		Size: 51.2 MB (51242103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e20bb18005d363ce5dc45411fe75f0081e3a98db4a3e992166634fc91e422a`  
		Last Modified: Thu, 08 Oct 2026 17:17:54 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2249f8e29e7d19ac6b84fc8cd44ff8eb34eea08d74b8878c1184058d67a1007`  
		Last Modified: Thu, 08 Oct 2026 17:17:55 GMT  
		Size: 375.5 KB (375529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83133cdba7c934d62df45d4d634e8f6af9ed570a357dcb42d39247e2f6974536`  
		Last Modified: Thu, 08 Oct 2026 17:17:54 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4ec9441b6cf44caedf28c886788a20a9bd35bfc8c9bc38fef14dcd4b68dd6b`  
		Last Modified: Thu, 08 Oct 2026 17:18:06 GMT  
		Size: 73.8 MB (73830200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac977e2acf8b188ef5dd0542dcc73efc6b603a8db976193f69656a2dfc95020`  
		Last Modified: Thu, 08 Oct 2026 17:17:54 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
