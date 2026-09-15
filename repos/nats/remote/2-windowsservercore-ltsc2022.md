## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
