## `caddy:builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:503654ad9d632c535e32b161be5ee137faea4b8eddc54c4f917d001b237ca655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `caddy:builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull caddy@sha256:c9ecccb7f768eda16633b59443f1f2a6b6949d22bd167fa24c71b6ff693ee52b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2281490760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037a3a2dae9e496f10f0ffc3ec89234522d3c636d60b6975100e70676d6eaace`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:03:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:23:28 GMT
ENV GIT_VERSION=2.48.1
# Wed, 15 Jul 2026 23:23:29 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 15 Jul 2026 23:23:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 15 Jul 2026 23:23:30 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 15 Jul 2026 23:23:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:23:42 GMT
ENV GOPATH=C:\go
# Wed, 15 Jul 2026 23:23:48 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:23:49 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 15 Jul 2026 23:25:30 GMT
RUN $url = 'https://dl.google.com/go/go1.26.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '97e6b2a833b6d89f9ff17d25419ac0a7e3b482a044e9ab18cdef834bd834fd38'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:25:31 GMT
WORKDIR C:\go
# Wed, 15 Jul 2026 23:54:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:54:55 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 15 Jul 2026 23:54:55 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 15 Jul 2026 23:54:56 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 15 Jul 2026 23:55:03 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 15 Jul 2026 23:55:04 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd99cda305ab1db9d8da0e66cf144dcebbcf0c3a5325391dc82055197d387130`  
		Last Modified: Wed, 15 Jul 2026 23:07:15 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e9a8d57f716e02d5365116db43c57b53689715a0a5163cba21001593278c09`  
		Last Modified: Wed, 15 Jul 2026 23:25:40 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5bf2e75cb5154bb659f0653c2642ac8e345d262487cd54b553cb6cdf41dfde`  
		Last Modified: Wed, 15 Jul 2026 23:25:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a02819a366febbaa58e8922d845f152027b7a1de360ea36f34221105e4dc5bb`  
		Last Modified: Wed, 15 Jul 2026 23:25:39 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a82673beee787bcf37f62fdf2b1572ff207ba838d98589756f6758816dad4b`  
		Last Modified: Wed, 15 Jul 2026 23:25:38 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2adba8149c4bb61dc9c76e970ee4fe77ae8e079029e54d11206a1f2b3ddf77`  
		Last Modified: Wed, 15 Jul 2026 23:25:44 GMT  
		Size: 51.4 MB (51357765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33901236d0d986b06776a6877b67410ce5be824867743e08cfbdc10bfa5560c4`  
		Last Modified: Wed, 15 Jul 2026 23:25:37 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb227dfed1f413262715253fbd0c1d8764dd0586efee2f2e96d071d7bd93f76e`  
		Last Modified: Wed, 15 Jul 2026 23:25:37 GMT  
		Size: 348.1 KB (348070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dade93007f7ad6e516f65b93a652f0c197f7aaafaf94a3d90010eb29207e3e70`  
		Last Modified: Wed, 15 Jul 2026 23:25:37 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1140a1222f86c38729f90dd78e48cf85cf80020efdc2d9bb8d00c14036cb65d`  
		Last Modified: Wed, 15 Jul 2026 23:25:47 GMT  
		Size: 69.9 MB (69915103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5263660db238bda39a068da3d7f78d562870cfd4f2338e13d05e5f1ef9b8725`  
		Last Modified: Wed, 15 Jul 2026 23:25:37 GMT  
		Size: 1.5 KB (1464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011ae60f0c96cacea6a9c6e682e7225a01e8efc587db021ef7afd87910d6a34`  
		Last Modified: Wed, 15 Jul 2026 23:55:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52411e478ed7be65456efdce1586c5ca8f2f0744288081d9fa1f96bc64938d89`  
		Last Modified: Wed, 15 Jul 2026 23:55:08 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bcb43f01525a3a75376944386b1d8087fc58afcdbbc8f1e90b31d07e95b67f`  
		Last Modified: Wed, 15 Jul 2026 23:55:08 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca7d8ede84486db70a601d4a19b20ef13995a2a4131f319d6af97fbfa5d15e`  
		Last Modified: Wed, 15 Jul 2026 23:55:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff4e2d09305ed49f6fac6a2320ef16ecafdeb96a61e823c2224565075324aab`  
		Last Modified: Wed, 15 Jul 2026 23:55:08 GMT  
		Size: 2.3 MB (2299563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ee61ec2c56d7d498a6acea7586332d6e59f729e6e5e517f6ee5dc774c32f1b`  
		Last Modified: Wed, 15 Jul 2026 23:55:08 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
