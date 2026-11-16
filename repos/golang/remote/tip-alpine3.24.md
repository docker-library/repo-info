## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:a2c8fbd08ca9728c35aba1abb296a139df74c548f15e0a0f6b691c309a4427d9
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

### `golang:tip-alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:df499d10a4e97405d3fbb212ffa34cb7cfe9d34b3300cbc5bca7019d1a5ed233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109399294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb04b099e88d051a46c96e260e994d02dc9d6f8ba41aadcee3021858438a3a2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 20:02:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 20:03:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:03:45 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:03:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:03:45 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:03:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:03:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc33237cab44cbff8dfd21a5424e685e8da35539ed047a96061d3e14fea7f38`  
		Last Modified: Mon, 16 Nov 2026 20:04:03 GMT  
		Size: 244.5 KB (244481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85a89f87fc149936abff9320ce12e5276df7e3e0b9baf1d1634a8964fe99fa`  
		Last Modified: Mon, 16 Nov 2026 20:04:06 GMT  
		Size: 105.3 MB (105300982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e901f77a2ace74cafd82cecc1639def9113a42fb59a05288b84107b49fa1fd85`  
		Last Modified: Mon, 16 Nov 2026 20:04:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:f2703f1eca62e8a3a14c9757e38a95951689bb6299d0dac29e9fae4d63a6d63f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 KB (202687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45d0f9a9ff72a4bdc720ebba9279687706b5ea41abab9ae90f624b560f710b0`

```dockerfile
```

-	Layers:
	-	`sha256:b2baad8b87bd3f9ea5d6e592663e2efab209297735d943330b8790372bd4fcdb`  
		Last Modified: Mon, 16 Nov 2026 20:04:04 GMT  
		Size: 177.6 KB (177589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ab29f818caa5b6f4465b0409c8ab40c45e880fb7db40cf9963c4c088a90744`  
		Last Modified: Mon, 16 Nov 2026 20:04:03 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:a43b4e8156b321a0190781e9b44dddafcf4736277fcba70a3723dedf8b58e526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105542581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bccd6667f61a6a3df9a9d4baf3479c0323a57cde6d13e7058437b0da20eb8d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:46:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:48:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:11 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:11 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:174aa68df2db30fbb5ef1751b2c8c0de417acfb55ede733c0259a174f547cb02`  
		Last Modified: Mon, 16 Nov 2026 19:48:28 GMT  
		Size: 245.6 KB (245564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31f01730a5f5ae01386aff62065489cde540d31e48d01ae7b7f018bcf826309`  
		Last Modified: Mon, 16 Nov 2026 19:48:30 GMT  
		Size: 101.7 MB (101738459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d5e2cb72f9c6499250df0705083b8fd217d27acc8973683aa1f66616a97e68`  
		Last Modified: Mon, 16 Nov 2026 19:48:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:495bf88a46f07ddc42a3c2e0e20413910249a22945a46dccc03d810e968576f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce8f18705f4e16964566e8330117d161df1eab2f2ff98d0091f59bb675e8c5a`

```dockerfile
```

-	Layers:
	-	`sha256:6b885bfc1a4f1acb1ec597487bf69ce12bcfa9fb257464b5265a0ba3b215df27`  
		Last Modified: Mon, 16 Nov 2026 19:48:28 GMT  
		Size: 25.0 KB (25011 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:f38dacb07b11be699cb63248900ea222278f6e8aff3e760e5684f0a684eb236f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104921282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda026125e5fa751c8522d35ba1ca8a7d1c566db51f606d3314ddd99b01f2716`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:46:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:48:30 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:30 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:30 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8213281a47a4480169a4b6782887c49124a8a49b4f0906c4a07b63ffa1ad30`  
		Last Modified: Mon, 16 Nov 2026 19:48:49 GMT  
		Size: 244.5 KB (244524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0682325f35574741c2b46338269a06687f5ff9e31a5f02cab62501cd269ece`  
		Last Modified: Mon, 16 Nov 2026 19:48:51 GMT  
		Size: 101.4 MB (101408869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad055dc255b7ba5cdd6b773d6d5561e5a2f14a094f02aef8d979512b75f65f4b`  
		Last Modified: Mon, 16 Nov 2026 19:48:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1f0b72e51e083c8d6fd38793d378fb294e624c63ed3d9adbf5918750621ff93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8922eaad858a547bf935c6678416fc2e7241d61d9913add98d63b950ef2f76b1`

```dockerfile
```

-	Layers:
	-	`sha256:497bde53dcc64e76b01cba4913c408285e92973924cd02b3a40ea0da4020e685`  
		Last Modified: Mon, 16 Nov 2026 19:48:49 GMT  
		Size: 177.0 KB (176957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4156297dd2e1ac05889385b2ca88c9a38d5bf5319d9aef9112f52aed423efd7d`  
		Last Modified: Mon, 16 Nov 2026 19:48:49 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:cdab2bb5d419ea3a7abe5addd6e5054edec221ac32a51f045b06861d73800140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104138601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df61e6a151b27612edf94c3b3cf4521c072a5c20043dd2632b5806cc7571eb4c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:46:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:48:06 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:06 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:06 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb495253380df61f0e379f4a6b3296ebddf12dfdcdab67b11080105b2d530ca`  
		Last Modified: Mon, 16 Nov 2026 19:48:24 GMT  
		Size: 246.9 KB (246925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2987a923307e8bb085d010c49e21c6802ab42ee36a1373237f3317b5e0604ed0`  
		Last Modified: Mon, 16 Nov 2026 19:48:27 GMT  
		Size: 99.7 MB (99700922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfc7595e40ed5e37caf8ee906de7a310bfa01256e8d1d7701650b08a7938684`  
		Last Modified: Mon, 16 Nov 2026 19:48:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:86c69babe21ef5c35b1d72b11cda1b676e34532ebd814d3f7a74a3c0f21fe073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78bb64a125498137d879f951bdc677c2b15ed7484e4b60206c50c30f65cd971`

```dockerfile
```

-	Layers:
	-	`sha256:ed1d1f39ef87569e6a6a306d4c0c3ddf886caab74194bf321543aae77a207b75`  
		Last Modified: Mon, 16 Nov 2026 19:48:25 GMT  
		Size: 177.0 KB (176995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c368ffe19046a109bd34d9d96ba2e8a598dbf1ba3774cec35a56aceffa250363`  
		Last Modified: Mon, 16 Nov 2026 19:48:24 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:2aab5d7391b5e1ecad17723f32c826ce29471d21d0068958034b90e34754e4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107168234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4188290a4ea84307122d40387ea9e1712f840c1bb49c01ba93c27ec1247746e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:48:00 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:49:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:49:36 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:49:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:49:36 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:49:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:49:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20b8e7fcf279a7ce6df86ac3fe2727694d2c42af2f0bf406190832d89745901`  
		Last Modified: Mon, 16 Nov 2026 19:49:55 GMT  
		Size: 245.0 KB (244997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68753a5ee6310f665de8b43bde628a2a60c5be6510cc4d63d8f7a5872ff51b5b`  
		Last Modified: Mon, 16 Nov 2026 19:49:15 GMT  
		Size: 103.2 MB (103242718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc972afcef54dd594dcc562db8adf0f1cdd213e78d5cd32e39b9e2d9ec57203`  
		Last Modified: Mon, 16 Nov 2026 19:49:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:13c5dd0635d7f9ffe4182f593ba89b1ba8ecfaafa5b68a45e9e7c4c14b687d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ab2482e5a2ef6d70ee0cee477aea7092a23e70b2e9ff609466213253b0fc58`

```dockerfile
```

-	Layers:
	-	`sha256:216ce65b6ffa024520076e0bfb973b598590184fba351d10209b88cd012a9b8e`  
		Last Modified: Mon, 16 Nov 2026 19:49:55 GMT  
		Size: 177.5 KB (177546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8c7abdfa75ee6c621ea4926d94a163a13e04e23f795e36eb97a31a94702bfd3`  
		Last Modified: Mon, 16 Nov 2026 19:49:55 GMT  
		Size: 25.1 KB (25055 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:dc06e2a024c2c32ba660bd483daff1f43503b6732ed577aab39e86111f5d4610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106076879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342f6a4485d185a011f10408215a9f73f88f795a10e426ca5d39b8bedfe95ed6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:36:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:18:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:18:47 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:23:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:23:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0182ddd5961f722a2fa1a03726f16f1610e93687b1f32d100d4748a469285ed3`  
		Last Modified: Thu, 05 Nov 2026 23:37:49 GMT  
		Size: 247.4 KB (247360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f5395f83e6cd48331cd9ec5843ef191fbe2946bb645580c1e8235aa95b7bb1`  
		Last Modified: Mon, 16 Nov 2026 20:20:10 GMT  
		Size: 102.0 MB (102007441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b65087cbd5a3f56ea2741dabdd3a8c71887fdadebc013437a3f03ad4600484`  
		Last Modified: Mon, 16 Nov 2026 20:23:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:6017694dc0a5fd982383f8b8d9aca308fa19b03482c2399d1a045d3f7b5645a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c234c2ef5a6f5d829cf65e76de76d6787120eba62595c136567e2d71417b8742`

```dockerfile
```

-	Layers:
	-	`sha256:00207040b5e6f60b7e18062f727477b95d3615bf1ada64489f1ae74b1ef289a5`  
		Last Modified: Mon, 16 Nov 2026 20:23:37 GMT  
		Size: 177.0 KB (176990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd4df22d3f4ff67ec4f0d83cf5278be17b3ba9ace5e2c35279ebe651d24d2118`  
		Last Modified: Mon, 16 Nov 2026 20:23:37 GMT  
		Size: 25.2 KB (25156 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:905b3b842e62aba6ea8df22256c0ff982aa5f2f1fb2dc3a7f1fb5e5e366503f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105183919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945cd96256e08164a6edfd512d92a1e9c5eb1e0525320dfe62643139f5de6048`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 10:00:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 10:00:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e4498b940a866146fd8b53dbfbd974e69ab4eb02ccdb3d511e9a22461cba85`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:9207bb5f747eaa28711d3b6b7989bf32b621097c941fffc8331321dd3a9894d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e913267ae72c1394f9b20d167298a051306ea62e98300ccf6381c27e3100468a`

```dockerfile
```

-	Layers:
	-	`sha256:ff74cb03d9cd2be070204622ac6de0a69a221495e1a92001c453f5a8bca5c716`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 177.0 KB (176986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26085821b2c19435d27cb8151e8a9088cb49a89f27dfd675132e3382b857083d`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 25.2 KB (25155 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:8e3e6c3d56ef94041ec7a48a751f9e3aa0bfb1de0cb38779c82a5b93b28f2bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (108020133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150dd9b1e7d678c9d1e6d84250f1b1e2b4c86c7e9f465398de15b7bebaa7e9ec`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:58:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:58:11 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:58:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:11 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:58:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:58:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa896657d8763e0f093ba3fd892c1ca57b016eaf8be90b93308ddab74fdc8a9b`  
		Last Modified: Thu, 05 Nov 2026 19:16:16 GMT  
		Size: 245.6 KB (245566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c977d3bf21c83de39aa3b449c5e12fc1ab0455e0298cf241d6d6cdbaf369627a`  
		Last Modified: Mon, 16 Nov 2026 19:57:25 GMT  
		Size: 104.1 MB (104053739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50de7f4899c9e6ef95a71cfb3edde75498b9b960d55bd9d39b3b40a8554bde35`  
		Last Modified: Mon, 16 Nov 2026 19:58:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:718be23bca09b367f36010b515e7de20d7220f7629105da0e61b5be2a8c69b99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9534b0fc036ce547701a41ce06a4ec28f760aad92cb230f1d7c609559b25434a`

```dockerfile
```

-	Layers:
	-	`sha256:89d96048e1bef97b4852d3cf598102434e9ba61f3cd135d0e06a903504fc79db`  
		Last Modified: Mon, 16 Nov 2026 19:58:38 GMT  
		Size: 176.9 KB (176938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4f699409c9ab7b6dac7801751fa576b0c90bbce03c4840f543e9787df41b68c`  
		Last Modified: Mon, 16 Nov 2026 19:58:38 GMT  
		Size: 24.9 KB (24925 bytes)  
		MIME: application/vnd.in-toto+json
