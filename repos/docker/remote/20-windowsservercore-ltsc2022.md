## `docker:20-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:ea15275a18f3012592e67e8051872a11e2b2945203b191c1da0d5771fb77d3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `docker:20-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull docker@sha256:70a5dbaf037e96c1033085997dcb07fa2e1596ebbbee0833a20b0337163f9d6b
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1442613350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c27520dbe24ddc045216c37cc47aa58e765aa000a386bc55372e2063b3bed4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:38:30 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 21 Jan 2023 01:17:25 GMT
ENV DOCKER_VERSION=20.10.23
# Sat, 21 Jan 2023 01:17:26 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-20.10.23.zip
# Sat, 21 Jan 2023 01:18:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
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
	-	`sha256:caf9fbb5bb66b4765df4292381a96e1cfc78d67a08a48a930d66d57438abacd1`  
		Last Modified: Thu, 12 Jan 2023 05:42:25 GMT  
		Size: 612.2 KB (612183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f7f7f53251ba2d0181e199d1bd37876042b23e037cf0cd6a8678056c7a98a6`  
		Last Modified: Sat, 21 Jan 2023 01:19:58 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4544079819db2e2462b9038aae6831b0fd0c36c80dbe76a11a5ffbdad78e7664`  
		Last Modified: Sat, 21 Jan 2023 01:19:58 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b86944ef48015c16735dee2382dbeabc6fd568d801115b072f686fc0526631`  
		Last Modified: Sat, 21 Jan 2023 01:20:09 GMT  
		Size: 56.0 MB (55967846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
