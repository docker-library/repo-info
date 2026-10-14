## `mongo:7-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:b0b2c0b65fb041d338b452e6988b1693ac1a93a9d8f8c8e87fb0a65e1a545d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `mongo:7-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull mongo@sha256:a651f0978c8dd814991782f882cd533e35708e7c338acd88976c860e1cc55ea2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2851710356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9cc9a5d37e7d14f2d9294df91cc82737dee0c1eee0a258707dbb31043f0f00`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:12:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:14:56 GMT
ENV MONGO_VERSION=7.0.45
# Tue, 13 Oct 2026 23:14:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.45-signed.msi
# Tue, 13 Oct 2026 23:14:57 GMT
ENV MONGO_DOWNLOAD_SHA256=c523c13eec4bfe0900f6d0a4db9f7033276bafeda6786f388297c59f13eaee63
# Tue, 13 Oct 2026 23:15:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:15:58 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 13 Oct 2026 23:15:58 GMT
EXPOSE 27017
# Tue, 13 Oct 2026 23:16:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97766d02987042d285a10ca17fc6fa20c0b19db89f3f23060f8afa37d787abd5`  
		Last Modified: Tue, 13 Oct 2026 23:14:41 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85540a513f4cad7cdf8c9f6f3230f0eb8408daf4430cb0b2f953a55efef2a11`  
		Last Modified: Tue, 13 Oct 2026 23:16:06 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9b627894e33fbb75aba5c540d2b95abedc23155650927f0ec77f2c54d26143`  
		Last Modified: Tue, 13 Oct 2026 23:16:05 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b319e12cc004f45884eeed27ab93e492d97c1f808360fb3373e072f094b144`  
		Last Modified: Tue, 13 Oct 2026 23:16:04 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772ce5a85ca9ebe4f2e131f4aaa83081272627f4110903322d2c9fed6fab2960`  
		Last Modified: Tue, 13 Oct 2026 23:16:52 GMT  
		Size: 625.4 MB (625415692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556e0632964ebb30ca7d1c4d6f399359edd5845bf599842de3840dabef51789d`  
		Last Modified: Tue, 13 Oct 2026 23:16:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b56d9555751c6cba18880d6a14e9bcf3c99da775d1669eb8a2bf1de7803bfb7`  
		Last Modified: Tue, 13 Oct 2026 23:16:04 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5755f1a1a8b55970e4ca1e0027a1a5f29b0334a4d0872bf70b8dee38e4381680`  
		Last Modified: Tue, 13 Oct 2026 23:16:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
