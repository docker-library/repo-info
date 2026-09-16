## `nats:latest`

```console
$ docker pull nats@sha256:ef5addbfb0840f4d80c8bce12fbdf12f794fd11470cd561ed12644bae11d0228
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
