## `caddy:builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:78cdaf3ed69343900331411d0cb83fc8a17dfa6aee267b1697796744467fa2a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `caddy:builder-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull caddy@sha256:420412e0f2aeaf0517d9c4f619c0d6fcffeef24221fe21978ff5161a6910e402
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1572043784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4be3a8e4b3c705cae2b6cc22e648438dc5593909f325709305b20c14a883f5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 02:57:40 GMT
ENV GIT_VERSION=2.23.0
# Thu, 12 Jan 2023 02:57:41 GMT
ENV GIT_TAG=v2.23.0.windows.1
# Thu, 12 Jan 2023 02:57:42 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/MinGit-2.23.0-64-bit.zip
# Thu, 12 Jan 2023 02:57:42 GMT
ENV GIT_DOWNLOAD_SHA256=8f65208f92c0b4c3ae4c0cf02d4b5f6791d539cd1a07b2df62b7116467724735
# Thu, 12 Jan 2023 02:58:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 02:58:23 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 02:58:47 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 03:16:17 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:19:43 GMT
RUN $url = 'https://dl.google.com/go/go1.19.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167db91a2e40aeb453d3e59d213ecab06f62e1c4a84d13a06ccda1d999961caa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 03:19:45 GMT
WORKDIR C:\go
# Thu, 12 Jan 2023 05:34:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:34:47 GMT
ENV XCADDY_VERSION=v0.3.1
# Thu, 12 Jan 2023 05:34:48 GMT
ENV CADDY_VERSION=v2.6.2
# Thu, 12 Jan 2023 05:34:49 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 12 Jan 2023 05:35:21 GMT
RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.3.1/xcaddy_0.3.1_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('f20e6ae1f20b65098ed7d1638a7ba96bd8da8dc8e7b6f771d32f33216abfd20606b821c6780d49ed866629764613deaff9adf3c7a26c35ec9413979b5e1087a6')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 12 Jan 2023 05:35:23 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fc8728d9c7bf65edf893fd902f8b1bd780f93623858960c9db79e39922b169`  
		Last Modified: Thu, 12 Jan 2023 03:47:24 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7935a4c648078e79f67a11bcd5908e251110dd6c5a4ee49a607f332dd25af9`  
		Last Modified: Thu, 12 Jan 2023 03:47:20 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d257f8b122044547f89f00f58661b25aca97c92f3831e7aaa11975639b6e35d4`  
		Last Modified: Thu, 12 Jan 2023 03:47:20 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95acaa75c1852ba1320c5db382b01f587badb615b6746b59be27eedcf96ab667`  
		Last Modified: Thu, 12 Jan 2023 03:47:20 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5201ba65043fa621c187729f18aecf4c549cdfa12cd6d8cab7a901d893f3a8a8`  
		Last Modified: Thu, 12 Jan 2023 03:47:29 GMT  
		Size: 25.7 MB (25702230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a317a349bca5ab28ba7c1ce039928a56390f7e7a8d7ddec07efcc1c9883e5d`  
		Last Modified: Thu, 12 Jan 2023 03:47:18 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8850296b8fbb853a6eb6341f7484cd4bc622e9f679f12c4123eddf08b7f398fb`  
		Last Modified: Thu, 12 Jan 2023 03:47:18 GMT  
		Size: 554.2 KB (554212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80b3d62f45a345eaac7caba0cdc514011cc61ea8f9d7d7b82d1bd4f8f3dbea4`  
		Last Modified: Thu, 12 Jan 2023 03:50:53 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320dc1bc3ac081a72fbca97a699b20068d92c70b3caaec8ca53036ab37509933`  
		Last Modified: Thu, 12 Jan 2023 03:51:58 GMT  
		Size: 157.9 MB (157885976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230636fcbea662dc69129c73285f4376c0b83a3222e8d438ec859d14ee1201b8`  
		Last Modified: Thu, 12 Jan 2023 03:50:53 GMT  
		Size: 1.6 KB (1569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581e22afffddeddb0a4127481e5016946bd3f35379291c6bb1e3b85e92e7acef`  
		Last Modified: Thu, 12 Jan 2023 05:37:10 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ddb6f5766983ae2c9587e9544f0bf697511be16dae8a2478b17db816865ce6`  
		Last Modified: Thu, 12 Jan 2023 05:37:08 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5b2677da9e90e1ee2d3224bb1f007c991bcee8f99c7b8c62f6e5201c080d03`  
		Last Modified: Thu, 12 Jan 2023 05:37:08 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e42261e708e39c68288376476a4b778a55614ff37fe6ee3b110fd7727819e8`  
		Last Modified: Thu, 12 Jan 2023 05:37:08 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f6ab9ea84facb1ba4276e74179d0fdd39d662edaf50a1792e8e51b4991244e`  
		Last Modified: Thu, 12 Jan 2023 05:37:09 GMT  
		Size: 1.9 MB (1853773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0f58748f0e49d530aaa3fe17e80d9cf3ff438bc8258e8fad6512052411021`  
		Last Modified: Thu, 12 Jan 2023 05:37:08 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
