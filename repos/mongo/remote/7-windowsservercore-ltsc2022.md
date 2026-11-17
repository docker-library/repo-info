## `mongo:7-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:cc39adf649c8c7906ceeb57b61a668828b1c2363c75c65965f188e3616740e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `mongo:7-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull mongo@sha256:63dfed9a06cd38ca9d7a06893abda96820e1dab21ca0a8fd94ddaa2dd3902468
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2872352354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed899f05e725002048fdc8b4381daf30d2896efa894e8f31a1860a5b544847a3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 20:06:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 16 Nov 2026 20:09:07 GMT
ENV MONGO_VERSION=7.0.48
# Mon, 16 Nov 2026 20:09:07 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.48-signed.msi
# Mon, 16 Nov 2026 20:09:08 GMT
ENV MONGO_DOWNLOAD_SHA256=6259f6586ba284c7f7eb6ea8a8add60919ad9b66b9f7b1f4594523f491ebadc0
# Mon, 16 Nov 2026 20:10:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:10:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 16 Nov 2026 20:10:27 GMT
EXPOSE 27017
# Mon, 16 Nov 2026 20:10:27 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:68af0acfe4d3e7cefae898281e5f39dd6f9788fd4344ad290ff27d88eafc115f`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a14c4d8642983406665fa3b5634acaf00cc57023b9b637365667659f190436e`  
		Last Modified: Mon, 16 Nov 2026 20:10:42 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cab96c7e0a9b782a3df322e3160bb53327d3c0a8623cffbe84e6503de3cf31d`  
		Last Modified: Mon, 16 Nov 2026 20:10:42 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83878cb29308c7e4572a32d30535199205e3fe862330f3cbd55bea9a6e342d0f`  
		Last Modified: Mon, 16 Nov 2026 20:10:41 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20be714bce653f9bb5a4cebea0aaa449945a4adeac1f06fc135c0cbae5e1429`  
		Last Modified: Mon, 16 Nov 2026 20:11:32 GMT  
		Size: 626.3 MB (626252476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7c12981a5f9324b1008114d28fa5f0165a697853b8552ed9d6bfbfb5db5e38`  
		Last Modified: Mon, 16 Nov 2026 20:10:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80389de94c94b6cf9c09750c1a9cf33e5bf2554a2299f85bd43c8c85779caa55`  
		Last Modified: Mon, 16 Nov 2026 20:10:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ab6cfe85d2b759dc876538e7220e42a84c41c2b700af8ef61ff9d544e11c48`  
		Last Modified: Mon, 16 Nov 2026 20:10:41 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
