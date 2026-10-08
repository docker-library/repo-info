## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:89570ca17b07e2cba812918d0f503471a4813a913ef3a40735e15ce8d6b960ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:641aaa372cf6d3ab9b0e541dbea113ad18d09102f5dfc05d6c9ea87bae2b35e0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2347239531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7f765d525ca5f8f96984c4dba3d351ffa99b9a392c169d6eea9f90bb258b68`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 17:33:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 17:33:03 GMT
ENV GIT_VERSION=2.48.1
# Thu, 08 Oct 2026 17:33:04 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 08 Oct 2026 17:33:06 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 08 Oct 2026 17:33:08 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 08 Oct 2026 17:35:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:35:24 GMT
ENV GOPATH=C:\go
# Thu, 08 Oct 2026 17:35:32 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 17:35:33 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:37:49 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:37:50 GMT
WORKDIR C:\go
# Thu, 08 Oct 2026 18:05:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 18:05:54 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:05:55 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:05:56 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:06:05 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 08 Oct 2026 18:06:06 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d97c7f8aa15ab25f61a1009bf9438efbbf123e2e38ff6660be0fdfdb12797c`  
		Last Modified: Thu, 08 Oct 2026 17:38:10 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5292df58b84127ae7e0b5561a464754846adcff555b10b313ab1e8f59e6e722`  
		Last Modified: Thu, 08 Oct 2026 17:38:10 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991f9153180df17bf81c88aeecded8f0b1f576d353968e7698c88ec416b3b91a`  
		Last Modified: Thu, 08 Oct 2026 17:38:08 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d0fd187fe984b77774fbb086522c53927d5d1e18ef0dc29bc35959f100f0c3`  
		Last Modified: Thu, 08 Oct 2026 17:38:08 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d86cafe7a8b45f640b1b251319798ccc6e05e52ea2d4f17b0f0af583713f847`  
		Last Modified: Thu, 08 Oct 2026 17:38:08 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ce161106da62de348c3510c0ad8591fc1135142e84958adc15698294ed1195`  
		Last Modified: Thu, 08 Oct 2026 17:38:14 GMT  
		Size: 51.2 MB (51225779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a751ae435d12895ddf4f373d6069183aa7bdad6bd6a802d4fb4189cd4938eff`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47765e1e0e96aeffef79c0db52667a4d217ac05ebdab1e8fef15e57444a8ada0`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 307.5 KB (307548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e741786746e12be13d0a86be31f20c51db951d4dd0c3ab710aa778f148f6301`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a99d6f1fb2a936662c742810fd3e764ad5e3cf1f1df5b81411149a8c1c5b72`  
		Last Modified: Thu, 08 Oct 2026 17:38:18 GMT  
		Size: 73.7 MB (73745768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566816be107a16ddd6a6d9620d579b62ca812bae29b1227a197f979b169b22e6`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 1.5 KB (1485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7516c820d1f77367f75c8d24389f3d76252db4bf37114dc53f5e395610e5e712`  
		Last Modified: Thu, 08 Oct 2026 18:06:12 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47bed3ed2cec4ecb5bbf445aae515d7feb7e18f9004cd0af6272372df2f3c99`  
		Last Modified: Thu, 08 Oct 2026 18:06:10 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa22319834cd3c25803fccdc3b4319069b4b4c6ab4f2ed9dd5bd3a5f2bd1e1b`  
		Last Modified: Thu, 08 Oct 2026 18:06:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f86cd969e441c8e25bdc870a42f270d23e9d06792e9ca01ef4d24314654eb95`  
		Last Modified: Thu, 08 Oct 2026 18:06:10 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16aca367fa13f200b2195034daaeb3f1f41e476d43c96f24a275ced09a9fde5`  
		Last Modified: Thu, 08 Oct 2026 18:06:11 GMT  
		Size: 2.5 MB (2454432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17360be0e5b710a39cf4960df4f12bb3a6754c88f3e868abee5f6b70a786c9ea`  
		Last Modified: Thu, 08 Oct 2026 18:06:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
