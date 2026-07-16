## `caddy:2-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:39ffaa076655113018a1f34a381c4c1b0e7e936b006583a8de681b1704b3f29d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `caddy:2-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull caddy@sha256:0430cf0b8857e1c91858a051f54ab7f45d3028e5f1d1230756b9ed4dbefe6ae5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2478824910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c0f4d338ff191d1569ec5096d5df6b0fb1d8831b4f8aa649ab19a5381d8253`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:58:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 16 Jul 2026 00:00:09 GMT
ENV GIT_VERSION=2.48.1
# Thu, 16 Jul 2026 00:00:10 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 16 Jul 2026 00:00:10 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 16 Jul 2026 00:00:10 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 16 Jul 2026 00:00:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 16 Jul 2026 00:00:26 GMT
ENV GOPATH=C:\go
# Thu, 16 Jul 2026 00:00:31 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Jul 2026 00:00:31 GMT
ENV GOLANG_VERSION=1.26.5
# Thu, 16 Jul 2026 00:01:53 GMT
RUN $url = 'https://dl.google.com/go/go1.26.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '97e6b2a833b6d89f9ff17d25419ac0a7e3b482a044e9ab18cdef834bd834fd38'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 16 Jul 2026 00:01:54 GMT
WORKDIR C:\go
# Thu, 16 Jul 2026 00:19:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 16 Jul 2026 00:19:29 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 16 Jul 2026 00:19:30 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 16 Jul 2026 00:19:31 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 16 Jul 2026 00:19:37 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 16 Jul 2026 00:19:39 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17862dcb579ae2128837a4a746019264910f371dd4a595ac7d0d4f887b7ff32`  
		Last Modified: Wed, 15 Jul 2026 23:59:36 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf940c2cdc8438fd265ca47cb01e8913d886ece1551b15199b0878286a67099`  
		Last Modified: Thu, 16 Jul 2026 00:02:02 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93816e56689e9b8f11408f2216d416cd4dc0d563c001c095e0b57943e2cc58e0`  
		Last Modified: Thu, 16 Jul 2026 00:02:00 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb780398147cd3d39088735483836defe61936d10d44b47d9beac36b06507d`  
		Last Modified: Thu, 16 Jul 2026 00:02:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c9a819a18cb7b897e3dceaa9155f00be431acfaff5ebcf9dedb3f7f51b5864`  
		Last Modified: Thu, 16 Jul 2026 00:02:00 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558ddd1ba0a58fe4b367a22c837259d6deaaa56002fa7c01d3d5976169de4a94`  
		Last Modified: Thu, 16 Jul 2026 00:02:06 GMT  
		Size: 51.2 MB (51219943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36378c73a15910ccf2545091cbc0740640c5fc19789c18b24d9f0db0ce59e3b`  
		Last Modified: Thu, 16 Jul 2026 00:01:58 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bc616ac8a063c2fd8d6bbe89c9353596dda870894a57462bedb2114ed59fd3`  
		Last Modified: Thu, 16 Jul 2026 00:01:59 GMT  
		Size: 357.3 KB (357277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddab53f67a228ae9e822502c14d209f8cb8ecb2689f17b77d2ef8fbd86d4adc8`  
		Last Modified: Thu, 16 Jul 2026 00:01:58 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265579cbf4f750cfbd5b789d8f9622634b0b25d44e8cc1237cf8e87ca6c9582c`  
		Last Modified: Thu, 16 Jul 2026 00:02:09 GMT  
		Size: 69.9 MB (69921760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f482f26766522a8e55aeb3178fb3abbe6bdabf951870c6fda07353fe4bfe02`  
		Last Modified: Thu, 16 Jul 2026 00:01:58 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ba0598683daefa3e17cbc5686f979f02e92273aa66eb21c9fdbc55ad832826`  
		Last Modified: Thu, 16 Jul 2026 00:19:45 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf12a0560a4c45f0fbe75f38f518bd6915102a720bedcdf68e6baffd7ee1cf1`  
		Last Modified: Thu, 16 Jul 2026 00:19:43 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed4ce1fc0db57d89e2ff84e4270e1bd172b9863d5381ec52485001502bc259d`  
		Last Modified: Thu, 16 Jul 2026 00:19:43 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d3bcf202182479bfa889bd12cc2007e5be9468a7fbe1881a6f31e59915146`  
		Last Modified: Thu, 16 Jul 2026 00:19:43 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89714ba687d303a9a4c8cf81c0fe040f405eb9cd568d846f30483f2fb634f2b1`  
		Last Modified: Thu, 16 Jul 2026 00:19:44 GMT  
		Size: 2.3 MB (2300979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c347ace25baa75ffcccdddce3347f7eb1f8b7044dce5ebdd315fa03edd8362`  
		Last Modified: Thu, 16 Jul 2026 00:19:43 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
