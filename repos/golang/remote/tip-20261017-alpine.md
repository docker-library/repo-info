## `golang:tip-20261017-alpine`

```console
$ docker pull golang@sha256:72e3e04c8e7546c9127198ef398c725986793be62bca0b3e99fc8dc862bf9fe6
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

### `golang:tip-20261017-alpine` - linux; amd64

```console
$ docker pull golang@sha256:9c7bdb7409eca2da4cff9c09113698b13bc95bb4769ad8a017a5ca88eb5d15eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109251283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e99c2bc1d4343369d7cb82bc9c15071beb282c3fc27f7a827716db8964b4981`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 18:01:41 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:01 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:01 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:01 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:02:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:02:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90915aec26d75efa1620770ea969234dca333c896f4baf0fa48c01fce5fa0c89`  
		Last Modified: Mon, 19 Oct 2026 18:03:05 GMT  
		Size: 247.5 KB (247536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01ab78d00d515349db1178978c2a7418c2e566cc5c189f42c024ab2aef46944`  
		Last Modified: Mon, 19 Oct 2026 18:03:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4ab37cafb0f5b53300c96eeface51f975a21921fe5f444a49728ff4973e3305d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe126c2a300d6bd2cf6b4b0eb22b0698103773791a1a06a87b78bfa433eb4729`

```dockerfile
```

-	Layers:
	-	`sha256:796c12c5d68842ccaaed9f66e7b89e903b5397402b4ef7914b6a39baf1b2cbb8`  
		Last Modified: Mon, 19 Oct 2026 18:03:05 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87b8fd3083e258e5b4e6e21a647b4aea9d5f2d08706ea869ba5c41b1963e72dc`  
		Last Modified: Mon, 19 Oct 2026 18:03:05 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:b9cb80a6e2725d6f66408b061a52be956439c966354f5078d2a2488f3f60ab0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105178236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaeb1a7dd2b4428760e2682a09c6189637c5a5bdf484d8556e6b5328b26acacf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 17:59:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:00:55 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:00:55 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:00:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:00:55 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:00:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:00:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47be9dedec4fcd554a9f9b06b3d5807ab4f272b194263f5df24a113a14928ae6`  
		Last Modified: Mon, 19 Oct 2026 18:01:13 GMT  
		Size: 248.5 KB (248497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efef78d19f54812d5d037ba04fe740ef126ef50b1dfb5b609ec9061ac0659dec`  
		Last Modified: Mon, 19 Oct 2026 18:01:15 GMT  
		Size: 101.4 MB (101374467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206db4d3f1356f4be074db453963e5b804bc0cb96dbe709043f76fb535835ae`  
		Last Modified: Mon, 19 Oct 2026 18:01:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7b25bcb20dd5e74d76195cd0715574b07f6fb17855afffbb4aa49919b1a1c5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481958510ecfa4ad46c53190dd034daaee2dc721717f9153b3c8fb22823e1c52`

```dockerfile
```

-	Layers:
	-	`sha256:2d152e85d6c26e8d7afaca682b7dd55540657b44c656628022ff319f0da71d7e`  
		Last Modified: Mon, 19 Oct 2026 18:01:13 GMT  
		Size: 25.0 KB (25010 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:75ad0c85f38acf27e729d88717b8d4e2cd291f6144300b153852f84c1d88f26e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104566056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da0501a41778beae47ede4f1e4ef2ac69000529175e8d38d0d75cea9b6fb90b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 17:59:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:25 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:25 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:25 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:01:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:01:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f019f9e8f51e88a03050e4df51aa59b26e9ee1ead22d28d1958e0257987a332`  
		Last Modified: Mon, 19 Oct 2026 18:01:45 GMT  
		Size: 247.5 KB (247539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2d1298568ab6e7029d6ca552cd3e8a6a61e3eb24dde966b000453cd3ea38fa`  
		Last Modified: Mon, 19 Oct 2026 18:01:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9187f8ec82a58ef369bf5b3eb4b4c52d3187b293a97280e882e5c89b0f30941b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a471dcfac920be9ae1f4463b2161c1276f2f36f19c86fa36fb6bb45446dc22`

```dockerfile
```

-	Layers:
	-	`sha256:6e56a40c4c2c3e5b26296fb4c5ac4cf2ee6ae58bdead9025d1131965e9cb0978`  
		Last Modified: Mon, 19 Oct 2026 18:01:45 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f17be31cbf9ac6b4aad37e040dabd775ee34db657fab070073e21a39597a748c`  
		Last Modified: Mon, 19 Oct 2026 18:01:45 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c4822ab134d682586ba0441acd4c20ee613881d4b11e4c28a7b1af216a39e0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103992472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d24c25fdda7445f30c935c8b9101b574a0504157e4285a17a894a34b6adb1f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 18:01:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:38 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:38 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:38 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:02:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:02:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851efa446b522b1766713c9d2228d75682b5468aef2490e00f25ce025d6d6edb`  
		Last Modified: Mon, 19 Oct 2026 18:02:57 GMT  
		Size: 249.8 KB (249815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee689139cd191f508a33d01fff27768ae41c8818a2d27bfe216157d1eed9d85c`  
		Last Modified: Mon, 19 Oct 2026 18:02:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e3339733eb36a20bc4c3539fd7937bfdc513acb6db03187e3d743e65f6ddeed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6f72deae10fa08caa75c0cce54d5360c0bfbbb4735b026379f6b182a1470aa`

```dockerfile
```

-	Layers:
	-	`sha256:d0e3ce559a66d6537e766d0d2456e8a44ffd25cf1e97d898ba299d65c3c60eb2`  
		Last Modified: Mon, 19 Oct 2026 18:02:57 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c95732fc44fadbac9c8ee0108a52cf4ce33dd7cf3accf6365f1775ff7211ba`  
		Last Modified: Mon, 19 Oct 2026 18:02:57 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; 386

```console
$ docker pull golang@sha256:b9b39c828382d95354aea8acdc07e5d60d0bc63c60ceb5856ee8b513ff807935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106866724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8f8e5a4fe294d65ffb7e6f263b71acdd71f43cd78763c2a868506e18cb2aee`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 18:01:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:03:09 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:03:09 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:03:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:03:09 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c51446179244c9f91e2a0fec5b78a00c8bfc889d59a3fa9c83963583c21f35`  
		Last Modified: Mon, 19 Oct 2026 18:03:28 GMT  
		Size: 248.0 KB (248032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9a6de4fcf556738bfb0a3c1efc30745fca424372f748e8bca28772f3df175a`  
		Last Modified: Mon, 19 Oct 2026 18:03:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:c1d7da9c1ab2e8e5b7fd3081734ed99c379f649142548193099c7299e4a666b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 KB (204539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd8bcff4b9b45d3f23981091f743f9607c6f0d81f67476c18e48fee1844e02`

```dockerfile
```

-	Layers:
	-	`sha256:3d92e3d85da74d7d19fcc74c5bb8d89d83c6e9799ba495958058ea131e8f0008`  
		Last Modified: Mon, 19 Oct 2026 18:03:28 GMT  
		Size: 179.5 KB (179483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5912a62622a8a16bc35e47a8a8a7edddd33611e970b05023d8c0227ddf435b1`  
		Last Modified: Mon, 19 Oct 2026 18:03:28 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:945473866c5cd769446893eb51d80e91a3b3d20eee212253b449b48094d27d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105831580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d84a2b3dd72eaea3f30429b61c22d66cc1d119be7b19dacfff1a2c22e12d40`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:53 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:07:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ead3e5d134162dee7a14bb813a5ed676c80b3a1dd5e7adcd490a8d837da3cc`  
		Last Modified: Thu, 08 Oct 2026 17:13:49 GMT  
		Size: 250.3 KB (250278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3969c5ba5e57deec40f3cea5a93cb146887629c240af3dd3c420cc91bb72540`  
		Last Modified: Mon, 19 Oct 2026 18:04:11 GMT  
		Size: 101.8 MB (101763666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f776d8a12126a0ecb1d8078d497056165983407a8296d0d1beaae7aaaa2a2c`  
		Last Modified: Mon, 19 Oct 2026 18:07:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:5f6c93bf1d5c01fd25bdc4f724386267a5c769a8dc67b5dbd101c060f23d3ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ca630e12983ca397c67040681b82454033ecd2abbeb2d074fd6f4071638c9`

```dockerfile
```

-	Layers:
	-	`sha256:6825e829f651d0e0c23c9c1cf02799f42d9d3b5cd825f9109db05aea486b3818`  
		Last Modified: Mon, 19 Oct 2026 18:07:39 GMT  
		Size: 178.9 KB (178927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b5335d67dc6ae85a319d5b0a4c63cb6a62d453ec59267c6d97677f296ae959e`  
		Last Modified: Mon, 19 Oct 2026 18:07:39 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:28a68dcbae320e6552b6d93df6a8e06f5ff8abec451cb65dec41f168586ae06f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105961716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a3cc3509ba5b7c05126023d423fc0d41384c3f9377c02c723f573a616e4407`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:33:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:33:03 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 19:14:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 19:14:48 GMT
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
	-	`sha256:2e8abfccbebb6990984afc48a50bcd0c4168b9e37a31b0d6473e7418e677a2de`  
		Last Modified: Mon, 19 Oct 2026 18:40:49 GMT  
		Size: 102.1 MB (102138235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f603bf4f74b8aa4e4e5c8cb8be9e4f46a3ae9aeff5e4d1de1748f1d9be1a6fe`  
		Last Modified: Mon, 19 Oct 2026 19:16:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:2cdbf0ab58bb05f38f7aa00908fd4e82c656c9d64c525175f6d777278a1b3493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132452920eac39e7f09da045c2e028a8f95226dca3cf312e7ea7b8f9b9347193`

```dockerfile
```

-	Layers:
	-	`sha256:891252777224785d542dc9f0aaab92f1e261b25b7652f54913f4dd6c7c497778`  
		Last Modified: Mon, 19 Oct 2026 19:16:22 GMT  
		Size: 178.9 KB (178923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3164c400956b9ad8c4e09dce3ff13dc2976d3fa05dac5f2451bcb54ae0b172f`  
		Last Modified: Mon, 19 Oct 2026 19:16:22 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-alpine` - linux; s390x

```console
$ docker pull golang@sha256:4bdc411c04cebee433d075d13af5921ad6cb4039eecbcd34e1818ba1562d066d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107750978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe81098b212105f999bfb191fd7127f6800f6e14b3539d53278350aa632b3e14`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:58 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:58 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:58 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29d3dd38ba53030beb03fdefbdab2103c1e496f7fee3765c41e59ac3f61bad2`  
		Last Modified: Thu, 08 Oct 2026 17:13:11 GMT  
		Size: 248.6 KB (248567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6fb31eef0025b29c46700c5b5c80f355cb9e06a94e748ae3ea31b41560eb52`  
		Last Modified: Mon, 19 Oct 2026 18:02:56 GMT  
		Size: 103.8 MB (103786913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500278ef51120ba912a524f5ca610361be7df64d0293de1797560f356cca9cef`  
		Last Modified: Mon, 19 Oct 2026 18:03:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e133b89a836544c833957a0ea12afe39ed8759ff33a2d283a8352587ebb0fd38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 KB (204722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0c49cbfffe30ad0af0aec3d78116e176c14f793006f3eae0ab8b2b2b6b3df2`

```dockerfile
```

-	Layers:
	-	`sha256:c9a593927b3ae86911ed39c54cdb438488123b38a545eaaadd4dabd77d5716f8`  
		Last Modified: Mon, 19 Oct 2026 18:03:31 GMT  
		Size: 179.6 KB (179623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95b8bcd15fc7e1e42119951a0ea84d75b017be032b338b13056e498e549dde59`  
		Last Modified: Mon, 19 Oct 2026 18:03:31 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
