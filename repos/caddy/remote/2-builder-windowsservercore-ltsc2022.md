## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:e5b9315d7d84e5cbc91a9408b29d8f133e9547c6ceda6bb94a6b1821b9851289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull caddy@sha256:ebbaf5458e4fe9a33e0f4cdfaae1baf8558650bb3b7a339b57c3390f7d2e7d83
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2366322269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023095b81b9b911ea4d056af1afe4e0aedef9659cd45da1a5100da44007f57c2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:16:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:45:00 GMT
ENV GIT_VERSION=2.56.1
# Wed, 11 Nov 2026 22:45:01 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Wed, 11 Nov 2026 22:45:01 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Wed, 11 Nov 2026 22:45:02 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Wed, 11 Nov 2026 22:45:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 22:45:15 GMT
ENV GOPATH=C:\go
# Wed, 11 Nov 2026 22:45:21 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Nov 2026 22:45:22 GMT
ENV GOLANG_VERSION=1.27.4
# Wed, 11 Nov 2026 22:46:46 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 22:46:48 GMT
WORKDIR C:\go
# Wed, 11 Nov 2026 22:58:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:58:41 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 11 Nov 2026 22:58:42 GMT
ENV CADDY_VERSION=v2.11.9
# Wed, 11 Nov 2026 22:58:42 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 11 Nov 2026 22:58:49 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 11 Nov 2026 22:58:49 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ac32598ab3b39188c78577c3e0e9204d8f4af135fe61041baa3693e7f20d14`  
		Last Modified: Wed, 11 Nov 2026 22:17:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a1ec7dc3dff4ff1bd72a6992ba7dfa4e266a32a8c75b84d073cd122392348a`  
		Last Modified: Wed, 11 Nov 2026 22:47:01 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f84d0915b0f1829ce1331d5008f62a2464b63a15b93b021da122b5c89726fe`  
		Last Modified: Wed, 11 Nov 2026 22:47:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b6b52f8b875782da54523818554cd55004ecd5d33acc832f35d409a83e7c10`  
		Last Modified: Wed, 11 Nov 2026 22:46:59 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3731c051a7717b8f69479f9aef3b7741f8c21c912b4772dcdd092cdbc66d55`  
		Last Modified: Wed, 11 Nov 2026 22:46:59 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1483cdf45d1f0465dcc9d6ac268f7fe690a5cbfa4e18d1387322cb5e0c9d180`  
		Last Modified: Wed, 11 Nov 2026 22:47:04 GMT  
		Size: 43.3 MB (43337913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e9d53b2693dc7ea31b6831bccc7167473006edbc116a7a19eb856bd557c82c`  
		Last Modified: Wed, 11 Nov 2026 22:46:58 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a62e203b2c79afe0932e2b0fd2df0c892e8e96c11366813f20fc3a99a4d38d`  
		Last Modified: Wed, 11 Nov 2026 22:46:58 GMT  
		Size: 328.8 KB (328753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1353c1794b53f2aa79cfdb197bf013a6ba0edc16e6e2f959cf7db452e45038a9`  
		Last Modified: Wed, 11 Nov 2026 22:46:58 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de6de854137245a40d447d4f3524c41c5a2e06b51c14d2fd230573713d319a5`  
		Last Modified: Wed, 11 Nov 2026 22:47:09 GMT  
		Size: 73.8 MB (73847449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbd71d71ae7ecabb839d070bd1a052feef9a42938cbcff33179fb1ebb1cfd53`  
		Last Modified: Wed, 11 Nov 2026 22:46:58 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562d133a8f8603a4442f08bce0577dd62af75114dfa5899e43b4b7f84c901c1d`  
		Last Modified: Wed, 11 Nov 2026 22:58:55 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e90286271676b47bf784cabb1e0a5e0de0364580e8de35cde2d3b76fcf699b`  
		Last Modified: Wed, 11 Nov 2026 22:58:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21e9769156c73082639b31b09f9f39056d69c4408c957093e863c2bbe87a40`  
		Last Modified: Wed, 11 Nov 2026 22:58:53 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82b05aa265564c4e3035db1ebf8257f39de1b8e424e3fc0a2b464c0c38bd603`  
		Last Modified: Wed, 11 Nov 2026 22:58:53 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a4e7d0416c170b654614012b63506db1fddecfa2ec66445723a1d838ade1dd`  
		Last Modified: Wed, 11 Nov 2026 22:58:54 GMT  
		Size: 2.4 MB (2443289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335e59203723fc7eea99ebbe39c7c290e9d63e3e5d9d81487e09bb3fdeebda5f`  
		Last Modified: Wed, 11 Nov 2026 22:58:53 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
