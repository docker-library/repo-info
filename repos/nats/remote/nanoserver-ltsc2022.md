## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:04b53710c884c133908bbba392ae906444470aa14dbc8c76853cfc085d45bb06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull nats@sha256:b172d0179ff52daecde763bd327d8276f6d13ddb2b3540d1c71cec1c63e7115f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133893125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7d48b0cbc378c7308850d452e2a90320d6e61c3cf27ac836c471e97e8ad769`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:33:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 16 Nov 2026 20:33:52 GMT
RUN cmd /S /C #(nop) COPY file:c5ba8ddabfa6bdb884d582c2eb77790c07981a344bb31247325541a7a60e20d4 in C:\nats-server.exe 
# Mon, 16 Nov 2026 20:33:53 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 16 Nov 2026 20:33:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 16 Nov 2026 20:33:54 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 16 Nov 2026 20:33:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9178dd0da19a4c896eeb5fdcc113d870356fddab2e9c1243e02145aa4ce2c57a`  
		Last Modified: Mon, 16 Nov 2026 20:34:00 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ab9b673b825c948687714d769763420609cc8a2ae517762c9069e93c7f7a20`  
		Last Modified: Mon, 16 Nov 2026 20:33:59 GMT  
		Size: 7.6 MB (7613318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15be40edc8a128c541dfcfd146effae5edf6661eedae388339790675e8ec9501`  
		Last Modified: Mon, 16 Nov 2026 20:33:58 GMT  
		Size: 1.7 KB (1700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c39de46b4b344584002a9b48152f06595a74e893877a6cb8519a8066cd5b65`  
		Last Modified: Mon, 16 Nov 2026 20:33:58 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f504081a0f759e0ff8b4f14ef42c438beb00c06540606cac2d3b2125b314421`  
		Last Modified: Mon, 16 Nov 2026 20:33:58 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26676d34051c457c92ce27c7be1d8f2b78b25753b8832cb297a41107a95d986b`  
		Last Modified: Mon, 16 Nov 2026 20:33:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
