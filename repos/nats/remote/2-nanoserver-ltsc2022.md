## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
