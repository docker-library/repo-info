## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
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
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
