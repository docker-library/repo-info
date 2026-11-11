## `nats:windowsservercore`

```console
$ docker pull nats@sha256:a31dfcd28fbf4d306c1c448eadb15654c135a2f400e9fa65f86094e2b364669f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull nats@sha256:e0489f3d14baf708ee09ab8e947465433f849f6bbb1210598e27abc09b095b1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2254643417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd6bd6341b1de430d87732ea5398f9b08c4adee02577939eaf5432d8f17ac45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:02:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_DOCKERIZED=1
# Wed, 11 Nov 2026 22:02:03 GMT
ENV NATS_SERVER=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.3
# Wed, 11 Nov 2026 22:02:04 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.3/nats-server-v2.15.3-windows-amd64.zip
# Wed, 11 Nov 2026 22:02:05 GMT
ENV NATS_SERVER_SHASUM=b202c46689a56b17e88939b6c53a25294021b000b9c7225209bcb1bbda347bad
# Wed, 11 Nov 2026 22:02:10 GMT
RUN Set-PSDebug -Trace 2
# Wed, 11 Nov 2026 22:02:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 11 Nov 2026 22:02:25 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 11 Nov 2026 22:02:25 GMT
EXPOSE 4222 6222 8222
# Wed, 11 Nov 2026 22:02:26 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 11 Nov 2026 22:02:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985cdefb6abad122d5e02da8d25bc1bdd43faf7ca80f9dd3261101a1ab8c007`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387296daa8755673907cf7b38bdb72ad011942273ab0f479fcaf018e17c212c`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b78732d3507844ef8846ccd9d2ba3ef883239183bb11232baeebb490352adc`  
		Last Modified: Wed, 11 Nov 2026 22:02:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6586b41c56c24767a97b23132fd476c0f8de21eaa4e2f37591460a629217db`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1043024db70a01dfb9dbdfd5ad844220e003bdb75eb118b33f6ed75328a621e9`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e551f074d7ec040e422ef202557e89640be13785cf28a79c5c4fe77cd33dfb`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a6bbcb7f6de472537b60f64c7dbf3864d15aa450318e50dd16c41f4c77266`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 334.6 KB (334619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3c2cb359caa4b1aa6c5d353145a0fc3b991542d5a30c4dc9e3520a23ffd48e`  
		Last Modified: Wed, 11 Nov 2026 22:02:32 GMT  
		Size: 7.9 MB (7947389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdab1c5f722823a86f3a781d862b90650731fed509b6592bfff0f3e5af650bc`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441b8b58ab60dfc55e36e831bb77090e9b12e31b9b672c7098a5faf15615b81`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979385e8e6d4eff187b9ab85d958d21603c164f973a78fe521edecc1ffc7b8e`  
		Last Modified: Wed, 11 Nov 2026 22:02:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5468399958e8bf928890dc09ae6d2479a9a65d97ec3cc2c2fcd3cdc9875c0e`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
