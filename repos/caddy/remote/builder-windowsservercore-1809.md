## `caddy:builder-windowsservercore-1809`

```console
$ docker pull caddy@sha256:cb3640ace321ebbfb60fa7be6fafa9a029320370c2912321cff7f8b59667c5b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `caddy:builder-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull caddy@sha256:0aaebe3c44abcca234c049d5c7154122a4c5a306cb07d55cc2653013c3b003ea
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1893035664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeccdbd7d802a9c03c176093db37157c3ed8992fd249e1d3ba55d6895b17c92b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 03:01:55 GMT
ENV GIT_VERSION=2.23.0
# Thu, 12 Jan 2023 03:01:56 GMT
ENV GIT_TAG=v2.23.0.windows.1
# Thu, 12 Jan 2023 03:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/MinGit-2.23.0-64-bit.zip
# Thu, 12 Jan 2023 03:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=8f65208f92c0b4c3ae4c0cf02d4b5f6791d539cd1a07b2df62b7116467724735
# Thu, 12 Jan 2023 03:02:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 03:03:01 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 03:03:35 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 03:20:09 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:23:52 GMT
RUN $url = 'https://dl.google.com/go/go1.19.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167db91a2e40aeb453d3e59d213ecab06f62e1c4a84d13a06ccda1d999961caa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 03:23:54 GMT
WORKDIR C:\go
# Thu, 12 Jan 2023 05:33:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:33:56 GMT
ENV XCADDY_VERSION=v0.3.1
# Thu, 12 Jan 2023 05:33:57 GMT
ENV CADDY_VERSION=v2.6.2
# Thu, 12 Jan 2023 05:33:58 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 12 Jan 2023 05:34:29 GMT
RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.3.1/xcaddy_0.3.1_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('f20e6ae1f20b65098ed7d1638a7ba96bd8da8dc8e7b6f771d32f33216abfd20606b821c6780d49ed866629764613deaff9adf3c7a26c35ec9413979b5e1087a6')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 12 Jan 2023 05:34:31 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203425975bec1802428fad91a2e5f01172b161062c12eddf729e548bf7e134e0`  
		Last Modified: Thu, 12 Jan 2023 03:48:09 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80e42e19ab862b4adea06f1995e1f5cbb2c11ad8d68ae4a7bb5d0da5d0e6f38`  
		Last Modified: Thu, 12 Jan 2023 03:48:06 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be5d5df8cec6d1386f78a342668c3d2cb809372865459c1b35aa8d5a39a463b`  
		Last Modified: Thu, 12 Jan 2023 03:48:06 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e467d553c4972b55bf8e3d80b16f245e5bb38f28d80b91ca4f9f90c09a6c28d`  
		Last Modified: Thu, 12 Jan 2023 03:48:05 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97054b77b205167acd5a303c8aa82e380f090ff4e2ded81d3425ec78500139d`  
		Last Modified: Thu, 12 Jan 2023 03:48:14 GMT  
		Size: 25.5 MB (25470784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150d9e1a1da09e17313cb3b6358d2f16cf2919c51e9addf30500de9d03292ef`  
		Last Modified: Thu, 12 Jan 2023 03:48:03 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c0d792e2a7942826a61fdc26b6081ab404122751ff4f4dd8f5b8b0eca21399`  
		Last Modified: Thu, 12 Jan 2023 03:48:03 GMT  
		Size: 324.5 KB (324466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cdd2ff60bbafbd62e677e0798ee562e3c4b291b841c6d0904ca080220e132a`  
		Last Modified: Thu, 12 Jan 2023 03:52:14 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17e6f8c13d649cbaec88dcdd4b1de7b004cf19227fbb4f923bd031b6b57988f`  
		Last Modified: Thu, 12 Jan 2023 03:53:12 GMT  
		Size: 157.7 MB (157659743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29fbb32977b62254a5de7ced98fe2a21e0342aa9db7b3cf32be4013d96b2cd9`  
		Last Modified: Thu, 12 Jan 2023 03:52:14 GMT  
		Size: 1.6 KB (1563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2fbb7e05d875affd4596aa7b87572980a3ab74800cff17a34deb445bed71b8`  
		Last Modified: Thu, 12 Jan 2023 05:36:53 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4bccd4fafe2f0aa56452e0ad0300fb96b730ff0bae19c979c771e2dfa00e6c`  
		Last Modified: Thu, 12 Jan 2023 05:36:51 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffca70b2a0f0dd90e4a1f3c0b6ab8a7bc9223d28d299cda64b4d50112375ea`  
		Last Modified: Thu, 12 Jan 2023 05:36:51 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f3871b1e83fff3b1433408b8f38b4cccd937d2b6fcdc63d97bbff4123b244b`  
		Last Modified: Thu, 12 Jan 2023 05:36:51 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0b82e2fe56995467a3f3f3302657d4fd19eb53677043c51e45a6617a208c3b`  
		Last Modified: Thu, 12 Jan 2023 05:36:51 GMT  
		Size: 1.6 MB (1618803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d054f883d11316d0a1ac79dcdd3b0282e9e52864913c4e2c931bce8c113dcae`  
		Last Modified: Thu, 12 Jan 2023 05:36:51 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
