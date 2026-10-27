## `mongo:7-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:dfe16c31b20127e3772577bc459f907e79853c9bbcb420c245d0a332b14c2683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `mongo:7-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull mongo@sha256:93597a69e4cb25cc5d75f97f0d07d621e1ac7d6780c743b65950d80e0f2d2145
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2852485239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a321bb292020a440b1365d33e18866c8af850bfdb88a37ffa4964510c8d25f8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 18:03:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:07:43 GMT
ENV MONGO_VERSION=7.0.45
# Tue, 27 Oct 2026 18:07:43 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.45-signed.msi
# Tue, 27 Oct 2026 18:07:44 GMT
ENV MONGO_DOWNLOAD_SHA256=c523c13eec4bfe0900f6d0a4db9f7033276bafeda6786f388297c59f13eaee63
# Tue, 27 Oct 2026 18:09:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 18:09:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 18:09:05 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 18:09:06 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646816c2f1af590ff134731ff75afa47c034fdfd370ebc2cfa697291902c8a5c`  
		Last Modified: Tue, 27 Oct 2026 18:05:48 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e33b504da74026ad745e9e275cc846f8c9a96e787f49bfde7d374166db485`  
		Last Modified: Tue, 27 Oct 2026 18:09:19 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf9d723baeaf58149caada54595ef7f055d27aa2d3746482626a126a90434f3`  
		Last Modified: Tue, 27 Oct 2026 18:09:19 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc79f3aa12e3f6398a02a88d67501eadd73794e07f7ae337dcb55020a86fe11`  
		Last Modified: Tue, 27 Oct 2026 18:09:17 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c2a1880548a8fbd7a822216706274090cf4447624add15eb20376cf461d751`  
		Last Modified: Tue, 27 Oct 2026 18:10:07 GMT  
		Size: 625.4 MB (625419875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e751d903145b3f80edbc7ef2f70aa13244941d7d7a8e9e31bd2603b62be2d6`  
		Last Modified: Tue, 27 Oct 2026 18:09:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d27f46bc8a91adb517aa5ff917b23b1a3bcfc2f8d7b8d31a56bcf093423436`  
		Last Modified: Tue, 27 Oct 2026 18:09:17 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a586b6de2ba3a9de6f4b7472c82968837ad977abf17fcbf3903946ea93771075`  
		Last Modified: Tue, 27 Oct 2026 18:09:17 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
