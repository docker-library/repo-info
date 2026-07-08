## `caddy:2-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:ca8b93467456a5219df4b4c940dd77104d5a41395b29e46b2e9f754b2134a271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `caddy:2-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull caddy@sha256:ad0f1cffd56fd6d79bff30432fc81a945dcfca2be9d0bd5caf75c75164a37376
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2402995309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507e183872d237eb09930409e621faf5f3f856fce7b32e8f92017a70e346053a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Tue, 07 Jul 2026 22:15:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 07 Jul 2026 22:15:29 GMT
ENV GIT_VERSION=2.48.1
# Tue, 07 Jul 2026 22:15:30 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 07 Jul 2026 22:15:31 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 07 Jul 2026 22:15:32 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 07 Jul 2026 22:16:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 07 Jul 2026 22:16:54 GMT
ENV GOPATH=C:\go
# Tue, 07 Jul 2026 22:17:00 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 Jul 2026 22:17:01 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:18:58 GMT
RUN $url = 'https://dl.google.com/go/go1.26.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '97e6b2a833b6d89f9ff17d25419ac0a7e3b482a044e9ab18cdef834bd834fd38'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 07 Jul 2026 22:19:00 GMT
WORKDIR C:\go
# Tue, 07 Jul 2026 23:16:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 07 Jul 2026 23:16:37 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:16:38 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:16:39 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:17:37 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Tue, 07 Jul 2026 23:17:38 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1a362ffc3b81594dd80398b5eb8933472082a7e947b2e1a6e4b09275dfef38`  
		Last Modified: Tue, 07 Jul 2026 22:19:13 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a95a8e1f0fed547bffc27d7c790255f37cc8711a17ac4c838854e77fc7fb33b`  
		Last Modified: Tue, 07 Jul 2026 22:19:13 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29dda5df3bfc329d1a83c5447a30af451b7b8ffb329539b1e3ebb15953d5af5`  
		Last Modified: Tue, 07 Jul 2026 22:19:11 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7226dddede77027665df2781b9251a088dc825cdbc08594b7fb42612d5317024`  
		Last Modified: Tue, 07 Jul 2026 22:19:11 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62aeb5546979d66765c18bc4cbba176a41469e0afef2d58cfa706a273f0726f`  
		Last Modified: Tue, 07 Jul 2026 22:19:11 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f3610532efaa3bffe9b2a9522a5cb8998563d2c41397274adaddee95620709`  
		Last Modified: Tue, 07 Jul 2026 22:19:17 GMT  
		Size: 51.3 MB (51251847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a97c02725fcd8fec29d4ad4cab6808d13a9fef12d262cc83e760875f292155`  
		Last Modified: Tue, 07 Jul 2026 22:19:09 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d766888603b46d44315cb14c177651fb39e8d36e12b885e1ea9185376eb92ab`  
		Last Modified: Tue, 07 Jul 2026 22:19:10 GMT  
		Size: 347.7 KB (347718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee869dc61a90e3e1c0312c27f214e3cc335f98d3924281bb74f49f4e235904a`  
		Last Modified: Tue, 07 Jul 2026 22:19:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c3167fca487a06f98ebbfa4f1944e05787021a971c16260cf64bc269f0da53`  
		Last Modified: Tue, 07 Jul 2026 22:19:21 GMT  
		Size: 69.9 MB (69912021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9bb8c9b66210f947306cbe921928c9e2101447a697ab1fce9bfbab5c3e8518`  
		Last Modified: Tue, 07 Jul 2026 22:19:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09594133dbcbc24986eaa62a9679c6ba8b216b5eaf202862a38495446c7ebe8`  
		Last Modified: Tue, 07 Jul 2026 23:17:53 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd34cf387f17a938a7b4385bbae2800a02088b0c8a9db6903af0e2909a148d22`  
		Last Modified: Tue, 07 Jul 2026 23:17:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8679652c0bc165cfec56c5a35703342b8e455967a8cbafaa4a1cef88d8b3ade0`  
		Last Modified: Tue, 07 Jul 2026 23:17:52 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f11ae9f6a12e53f5329199ea683df889418a79a2f2d998bcd9bfd8ab677b7c`  
		Last Modified: Tue, 07 Jul 2026 23:17:52 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab94bc3789e553585fec9b9018e64439f44cf31fb5ac602e3f1bfec0e0c2fc2`  
		Last Modified: Tue, 07 Jul 2026 23:17:52 GMT  
		Size: 2.3 MB (2323775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c943fcb28d4c351453e4135c62099fb70a9b4f487c43c19a6829fe92d5aa13`  
		Last Modified: Tue, 07 Jul 2026 23:17:52 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
