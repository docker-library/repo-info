## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:0fa6026356aa5edbe3911f422c85085ca6cca1260be695eb97cc5c8838062181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull caddy@sha256:f75a30431394145e94d996426e7e521384e823b05357c5673614b4e1515adf60
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2366068969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae7850164660eefad03ee59bd22251d74c900e99a029f2de737fe504704fe73`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:55:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:06:21 GMT
ENV GIT_VERSION=2.56.1
# Mon, 16 Nov 2026 20:06:22 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Mon, 16 Nov 2026 20:06:22 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Mon, 16 Nov 2026 20:06:23 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Mon, 16 Nov 2026 20:06:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:06:36 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:06:42 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:06:44 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:08:20 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:08:22 GMT
WORKDIR C:\go
# Mon, 16 Nov 2026 20:37:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:37:14 GMT
ENV XCADDY_VERSION=v0.4.7
# Mon, 16 Nov 2026 20:37:15 GMT
ENV CADDY_VERSION=v2.11.9
# Mon, 16 Nov 2026 20:37:16 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Mon, 16 Nov 2026 20:37:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Mon, 16 Nov 2026 20:37:24 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d1d4428786cff57e799560ea1abdaf3b97bf6b120df6d7396db9deb86178c0`  
		Last Modified: Mon, 16 Nov 2026 19:55:53 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c925a15dc0dcbfd156f09c3bba7489664c1fb065188dc8e4a82c7e18ff904f`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9581ed18be73b89eae9e030569973aae7f68fdd940579d8e12b6e5adce1719`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47839fb5095ee31bfb832ab721ce7c947571744de14585398ed113a39be02e`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad8128e3f63ab8b706f1ba3f28f07b9edd5ffda0ef961fe14da3e63b185c602`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfc78ca8419ece385894d9a3210e30c36d92222996517b045839bc0ee18437e`  
		Last Modified: Mon, 16 Nov 2026 20:08:38 GMT  
		Size: 43.3 MB (43338163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce133c64f5112ee00601164e946c1e853c1c20045775da1f59af28d6bd220a13`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81633b6b3291d29581c8a5217b624de063e495e8e257b2419167d95c21c7136`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 328.6 KB (328634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e19149e960e133a29c75dc18ee64c026d96ca05650a2b05a87de7d933a53f02`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c0f51b87348368484b85cbedb0c68417b471c73ee064d0a4691b4ab2dbe024`  
		Last Modified: Mon, 16 Nov 2026 20:08:43 GMT  
		Size: 73.9 MB (73850642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cd1b81ca1421cbbd9047e12988991a74a3e4da4c11077f56f4137552e2b143`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ead48116694b95b3f5536077fbae74ddd5cbf1c05b756f8749459250685cdd`  
		Last Modified: Mon, 16 Nov 2026 20:37:30 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604298f242805e68a6e192e54a26fb90049f230382224b982bdbfad52b872155`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b72c4bec17e5356e7887e6a579be47fca908a2f924dd72ed2957fb2d1d216f`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bdfa4f98af63f57447ce3fff0c36de397b0c3d5948028efa491c2471de6ceb`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0895fa2b3732e341cddf89a74fdf3e2d88a4719b30f690cbc54436a93ce6e3`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 2.4 MB (2443603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e982b15015d3ef0520c1192262c449c210c8f61d9d287b9c8ce81bb071dba3`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
