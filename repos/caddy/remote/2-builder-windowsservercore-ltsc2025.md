## `caddy:2-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:f7b6f1bfb64a7005a79f47e7eb956fd4afdd90c40dfef116fbe89b0a82eeb1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:d69dd7b6ebb478ffabd3417990a38e373a446edff22311104db9f5c479469131
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512119653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ab1ea98b024137fae2a811b0da735ffb094c68750f10ae644f609a585ddf48`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 10 Nov 2026 18:23:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 18:23:54 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 10 Nov 2026 18:23:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 10 Nov 2026 18:23:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 10 Nov 2026 18:23:59 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 10 Nov 2026 18:25:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 10 Nov 2026 18:25:44 GMT
ENV GOPATH=C:\go
# Tue, 10 Nov 2026 18:25:58 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 10 Nov 2026 18:25:59 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:27:44 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 10 Nov 2026 18:27:47 GMT
WORKDIR C:\go
# Tue, 10 Nov 2026 18:54:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 18:54:31 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:54:32 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:54:33 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:54:40 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Tue, 10 Nov 2026 18:54:41 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f0018d137ec4df98783affb3d7fe30911cf55a0c648daaf2fbd4b3f3c6d2ff`  
		Last Modified: Tue, 10 Nov 2026 18:27:58 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84461e85207e10ffb0753e58d614cc660a711c73dcf654aaa196a25c0d8d6e9d`  
		Last Modified: Tue, 10 Nov 2026 18:27:58 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ade05338ceace3b81bf7bc9ec479036ff028d872cf2f19ea341ee0d06930fcb`  
		Last Modified: Tue, 10 Nov 2026 18:27:57 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffc11f0ac7a8b67d0bbad957c2f199be3096992a324e21f569646beb10c5cff`  
		Last Modified: Tue, 10 Nov 2026 18:27:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93120ff2c7cb32e71df4b532a6c119460c2a64681f5544e47eebe0f3f3d49940`  
		Last Modified: Tue, 10 Nov 2026 18:27:56 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2c8b4f63f1007681fac30a0d6b5767a6ef6bc1a12dc88eebcb4f4069bdfd9f`  
		Last Modified: Tue, 10 Nov 2026 18:28:02 GMT  
		Size: 43.4 MB (43364299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bea5ef800d2e06b97e1814742af3898caee034b8c784061ba52d878be2842e5`  
		Last Modified: Tue, 10 Nov 2026 18:27:54 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c3eaf97cd9de6bfab8e5a85ff175b6b063434a0260d635ea60b20702e27b1b`  
		Last Modified: Tue, 10 Nov 2026 18:27:55 GMT  
		Size: 359.9 KB (359921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4176b048fdb003d4d02a37750fd15799be1a1d0a4287d08c111cdbcd143f4a`  
		Last Modified: Tue, 10 Nov 2026 18:27:55 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0429b1378a00b75444d787d69d314abc134130aafe3c9c7a2a33c6ebaf739446`  
		Last Modified: Tue, 10 Nov 2026 18:28:06 GMT  
		Size: 73.9 MB (73852535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96cc90d5c9e6174a3fa0ea9b414efc31a37c6ad91e73ccc7d331bbcc27c3781`  
		Last Modified: Tue, 10 Nov 2026 18:27:54 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55527dd038643d39884893d895412927f87e6a60ab9f813ecd91c55028ebe302`  
		Last Modified: Tue, 10 Nov 2026 18:54:47 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a87a7b65d5098867e0a545868b8ada4159b8cdb366acdce22494d000f09938`  
		Last Modified: Tue, 10 Nov 2026 18:54:45 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8f02e569e8d091cd2e7ca09802cfebf46aa830d9deff26810496b1d1c30ce`  
		Last Modified: Tue, 10 Nov 2026 18:54:45 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af1f8b7549f322be4b1f3b862dff5db4b2d4fa6de991597571642b45f739b3`  
		Last Modified: Tue, 10 Nov 2026 18:54:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586e70b8ce9c1c7e242ca82d9296b0be01313e0d694e9ca8b1ab4dfbd6515a29`  
		Last Modified: Tue, 10 Nov 2026 18:54:46 GMT  
		Size: 2.5 MB (2476818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a6a1dae1cb7d07fd82b1c1e34e68543a71b28a448d76a1b96dc8e191f89228`  
		Last Modified: Tue, 10 Nov 2026 18:54:45 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
