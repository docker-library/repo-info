## `julia:1-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:6bcc73bc4b51f53cfee8eb30e8d946812f784d299267557e270b20b4ed2ad043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `julia:1-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull julia@sha256:c9a4701daa1909880cd771a08532cdaf09111c95c768a020fd061d005224c855
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529083647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3935505dd23b89edf2399f49e6aecec250e3a4b23efab75382ac6b6f4ab02b6c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 07:17:08 GMT
ENV JULIA_VERSION=1.8.5
# Thu, 12 Jan 2023 07:17:09 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.8/julia-1.8.5-win64.exe
# Thu, 12 Jan 2023 07:17:11 GMT
ENV JULIA_SHA256=866e160d46c85167d10e8a925776c2fb1cea0f668eb8c80a605842fd35ef28b5
# Thu, 12 Jan 2023 07:18:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:18:53 GMT
CMD ["julia"]
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
	-	`sha256:dbf6a1090c725d1a63b8c4eec6463d1763b80d42d2171f5ce9cd75fddd2699d1`  
		Last Modified: Thu, 12 Jan 2023 07:27:22 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7db9ff5927b47fa0fcbde10ab78c70cabefa482f1374d29bc470d65a9e7535`  
		Last Modified: Thu, 12 Jan 2023 07:27:22 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c892096ddc88984e88fc5f229d4f69868a8ac6d7563e17cc12c118184c51f1`  
		Last Modified: Thu, 12 Jan 2023 07:27:22 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2f5eab4cc3f22293b8b8e499cebec3576051f1372b5019d1e55944d76d2e62`  
		Last Modified: Thu, 12 Jan 2023 07:27:56 GMT  
		Size: 143.0 MB (143047586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb984ae0be34e522a184083052f3830e05f01152a8fb33bf9c256ecd04a7db41`  
		Last Modified: Thu, 12 Jan 2023 07:27:22 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
