## `golang:tip-alpine`

```console
$ docker pull golang@sha256:8d8b4181e66721fed16145703400691f161b6e502da5ccb8159a5b40aa51b140
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-alpine` - linux; amd64

```console
$ docker pull golang@sha256:52a64b8cab0253754805ad90b38e569dad9f0ec295a3c9a67350c8b2045c1c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109540648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efed3dd1675ca2caabb497cfe8cdd826fecb5946cf216762edf1ddccd25a4727`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:37:44 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:37:44 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:37:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:37:44 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:37:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:37:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59970416371f68b9f48565430707cded432ab9e91500685be4b80e1522a9773d`  
		Last Modified: Mon, 05 Oct 2026 21:38:03 GMT  
		Size: 247.5 KB (247532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4584066e1921a6e511f531dde93128fe2a9849e426a6a563277360bb820faf`  
		Last Modified: Mon, 05 Oct 2026 21:38:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:c204e89ce02cc464859ac47fba53ad54982fa2d0d22364b9ac48f6aeec4b3221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba861be973955021d0e703605386bf0477b689461d92c838a2c360ba338d819`

```dockerfile
```

-	Layers:
	-	`sha256:68894bad4efc5c8f15f5d63df64bbc8f52fbe351c62ebdf837bda87aeb263199`  
		Last Modified: Mon, 05 Oct 2026 21:38:03 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:789da829797a61c1cd3733846a0cccb04fa035385dcc1b8bfa5dd044caf7aca7`  
		Last Modified: Mon, 05 Oct 2026 21:38:03 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:6338a4bc75da4c8557dc68fa459b2cefd26ff66c9e8acc40585b2f030ec97f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105375785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade247dd0591c9a156da194e19d59201c0760b43c10fbaed81d9a9f2190f7a53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:31:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:33:35 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:33:35 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:33:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:33:35 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:33:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:33:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62b517de3b771661e83f783c03f23e5397b759413481d5c3f83cd4e57fa8221`  
		Last Modified: Mon, 05 Oct 2026 21:33:52 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4642b8b56bd46ed35dc6afe7265ebe8a37cfb0661ad32a5b87b86f8b11b4d9`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 101.6 MB (101572023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785d1d214361a615f8846bbdf4f0232d03a9b1a42291c916cc68e6fd6f39b6c6`  
		Last Modified: Mon, 05 Oct 2026 21:33:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:3b1570bf08116404e5e049cfd6172d0d957824174ef99a5d4c0b769be99eddeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2283b9993022e621b90f04de7c815e66f275189d66ed2df5c71b06c5cffd0d8f`

```dockerfile
```

-	Layers:
	-	`sha256:671d24696a63ae7637799880409cfbe68f68cedb4555d29fa96ebc807899148d`  
		Last Modified: Mon, 05 Oct 2026 21:33:52 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:a6a9de86154be4fce709ec2b38b24c7436ee495288426ec32c8ff91e32b77bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104770264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21caa8e556395c57684c9a253d9237ac35dedf72ac79f081bd4a9c2889ef8e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:54:35 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:56:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:56:16 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:56:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:56:16 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:56:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:56:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb18de77c9edbd4758019d39f06b2bd9e2eada24af7cf1a0189d831dab97602c`  
		Last Modified: Mon, 05 Oct 2026 21:56:34 GMT  
		Size: 247.6 KB (247552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e339099b2afc111bdd8d52b7488f8b5fdedf110f70ed46da013c7852e32909b`  
		Last Modified: Mon, 05 Oct 2026 21:56:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7346a283a02a132d2cf2615a327e3a7b7b5eac5cbaf5bcbbfc0af49215a3519a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4b592056e1a936f5da59481e5368d523cda086ba5c2c67095ac4cd42c57b37`

```dockerfile
```

-	Layers:
	-	`sha256:9b1ab2dc9497a2ea4d6ee3c41b4ddeb443cf43af40a7cbd9f3919bc1986882cd`  
		Last Modified: Mon, 05 Oct 2026 21:56:34 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0eb38184b410717f9994f9202afc51852ff5767c479c1d69c2e5be87af9071b`  
		Last Modified: Mon, 05 Oct 2026 21:56:34 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ffaf6fb964d05782a986a87bc10b53a40e755eaec39fa7fb7fa1f4f14cccad56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104183574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2d72d025ac4f430326073d58ea3968dbdedc44ca2d12b1d1663052e05275b0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:42:13 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:43:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:43:26 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:43:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:43:26 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:43:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:43:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3ade80483d66fab5dafcd32cf8bbe74dfe9fbdfebc392a2a9ceeb36827916b`  
		Last Modified: Mon, 05 Oct 2026 21:43:45 GMT  
		Size: 249.8 KB (249829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520b6a3b3ebe2759185a653299fd266a3dbd076957c07f074c660adee975a5ce`  
		Last Modified: Mon, 05 Oct 2026 21:43:45 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:00384e8eddcac55d3a64ff8d3057c2cbf118f4c64e48df36fb98fd17687d7116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3c60e2ee57fc1d0b6cb2283caf7f021fb1a6797c473232b0775c2e5c2b7f6c`

```dockerfile
```

-	Layers:
	-	`sha256:af844dbb4d99728fb185662e2fce9e6191875f9037aa7c60c60c2796c2772349`  
		Last Modified: Mon, 05 Oct 2026 21:43:45 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:887190eaa7e08b40ff09530c922092f8da54fe9a24b20acd419efab0c673ed87`  
		Last Modified: Mon, 05 Oct 2026 21:43:45 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:6909bffdaf7b9e224eb62bec2b93bb74492c438d1b30ea6febfe20792ce2d777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107107114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8f673ab16a0ff0925448d3a5fffa1cb589adc3e55fc31312bb745d96f76e7e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:52:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:51:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:51:32 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:51:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:51:32 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:53:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:53:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9751c87e5633213872c8a818b1aeca5c9e165c536439876ee468b4dd0e40bd`  
		Last Modified: Mon, 05 Oct 2026 21:53:39 GMT  
		Size: 248.0 KB (248037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830418a18500697af0a65bdcf7872e293c4b90904ba43998d7a9411f56d1519a`  
		Last Modified: Mon, 05 Oct 2026 21:53:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:2a54cd09e9e3011722f1ec011192b68eeb26f6169c41c674cd09ef50cd5e7706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 KB (204539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c383fcad90553ecf375c23705d8338206a564872852c02e252882a14cc6964fb`

```dockerfile
```

-	Layers:
	-	`sha256:9a5940f13c83b6a40fa052dd67c0e04c93eecba98a4e716212495e3f0b7e0de6`  
		Last Modified: Mon, 05 Oct 2026 21:53:39 GMT  
		Size: 179.5 KB (179483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2131d322cf1ee6a9f19770772b75d29b07d13baf48f0cc66a3c88b87fed73ce4`  
		Last Modified: Mon, 05 Oct 2026 21:53:39 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:51b5c92e954687abd1ca9a68b3d819ae10cc08fd45c7b19be31d47cdea3a541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106029627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29da33976777de43b9fafa02c74113f96e5e097b7471b3142d7d69be83b5bc4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 22:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:50:26 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 23:00:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 23:00:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72eff9ed58addd1098f3bf6af08be91892663d46d4caf508486c7c3ce3e5e09f`  
		Last Modified: Mon, 05 Oct 2026 23:00:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:b7161aaee88c10d3e92654aef3b042346077a0df7c03482a4ecb492cbe773087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e69468b29d1142ebc6a92dded363ac352e472f38e9c90f0337f6b5f904825b`

```dockerfile
```

-	Layers:
	-	`sha256:f7e5ee8b514c8d730e314ef282ab9d345db47522714f571a55033e3d230dd10d`  
		Last Modified: Mon, 05 Oct 2026 23:00:59 GMT  
		Size: 178.9 KB (178927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:973e927720e7e30a8ba9190dbe5bf55d8c21297acfa5a5955167feee3fd9ecbe`  
		Last Modified: Mon, 05 Oct 2026 23:00:59 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:0a8157a2bf63438b825beb9f4bbbc94ca52ae9f5545d43c49211ebbdb4009e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106199157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c549337da985d3dd7105bcc8f1dc88e159596b19e8de81f36e8a1d3f93de227f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 06 Oct 2026 01:33:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 01:33:21 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 01:33:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:33:21 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 01:33:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 01:33:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0ea0adf3388720ab6ca6cae55e8e0e08c82932811f55332637522351fd62d`  
		Last Modified: Tue, 06 Oct 2026 01:37:14 GMT  
		Size: 102.4 MB (102375676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3119c28b0da855556d3c8e815cc7b11e217d95f9790ef80058c4ccffd5a5b2`  
		Last Modified: Tue, 06 Oct 2026 01:36:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9b7649b9ce03986adb94fc2629772da1cc6d165a85030f437e304ddeaa7ec31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf608550affff3f536af85bc3d2f5b403fe47c026c8c28f57d06a5d81d332740`

```dockerfile
```

-	Layers:
	-	`sha256:102779c9b2ba9be5018e0ad420ebe9eb7023fcbc66ea64b3444a43d814f45a4d`  
		Last Modified: Tue, 06 Oct 2026 01:36:59 GMT  
		Size: 178.9 KB (178923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:334ebfd4341b9d92b8cdf439373e6e8052cff9f48aa231fb9118626dc2574bbd`  
		Last Modified: Tue, 06 Oct 2026 01:36:59 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:fb7bf5fe9748a4d28fca1c8e91d37d4cfda6499aa2dd3e841dbb9e6c31e63b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107967416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aad7561f68db9f78593ef79866b947c05e2261424d42b923b15aa71fdb6802a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:34:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:36:54 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:36:54 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:36:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:36:54 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:36:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:36:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d721749b64fdbdf4a1e0af35300a469521ad0fc2f473f694a3927f6c198141ba`  
		Last Modified: Mon, 05 Oct 2026 21:37:19 GMT  
		Size: 248.6 KB (248573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224d60fdd825abdcc86346793af4d4ea3e1c06771a495a1aada2b7e57593ead`  
		Last Modified: Mon, 05 Oct 2026 21:36:55 GMT  
		Size: 104.0 MB (104003346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e4d092c5ac0c6819a4b38e519a18fd23f606d4326f16b8d55bc048dfb049d7`  
		Last Modified: Mon, 05 Oct 2026 21:37:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:f8b9b97b19ad29a0c650ab9ce1a0fee701c7615c9ad636f70c4c8f70e2af680c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 KB (204722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4398c5182e6177092b86f25686fe7f8a75f09d734ab176ec6c3464f7fe666cfc`

```dockerfile
```

-	Layers:
	-	`sha256:3cef87b572deb902905d3ade37f0e222f0ad10b280fc2d558c2fdb0dcf96487e`  
		Last Modified: Mon, 05 Oct 2026 21:37:19 GMT  
		Size: 179.6 KB (179623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ab1d96703aa24f60c697f6b54e818eb74b9bad123d4c3cbf52c62e9207d97`  
		Last Modified: Mon, 05 Oct 2026 21:37:19 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
