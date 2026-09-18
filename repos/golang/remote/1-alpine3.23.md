## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:96a6b037cd95ee2d72dc63fec59ad8250110fe795111d783d97aa980ec59ec32
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

### `golang:1-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:0e0fe2a482e57e5153bb793fc149c14acfa94f0d2f9e755e3df7b1c2aab441ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75174065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d993bb9d07793e27bbdd0031bd73c9c0bc66e584978ecdf0e34ea76b97e0edc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:42:28 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:42:28 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:42:28 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:42:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:28 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:42:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355a60617cc2b224722025f56ecffb1da150ebfd45c8cfc4497e5aaf28699221`  
		Last Modified: Thu, 17 Sep 2026 21:42:44 GMT  
		Size: 247.5 KB (247516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1dbfdbb5d59bdeac07b1398a9f0808b453513bf6a76eb3ffd509a284483095`  
		Last Modified: Tue, 01 Sep 2026 23:25:25 GMT  
		Size: 71.1 MB (71077884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02024e7455c7f6f8b72fb6aff544d311f777f83cfcf6626a75c4ce3bdbfb9983`  
		Last Modified: Thu, 17 Sep 2026 21:42:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e7daba6fa1c9d64ea2a7cca302024bae9bf746e88e0e4015e3d71633becabdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 KB (203056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f4379fe3bb2992fb87274cac974a1e94f9fc294b8c0f03511218a48a7e196c`

```dockerfile
```

-	Layers:
	-	`sha256:44331f59ad44a64c9db634df1d8161a70711c8df05479aeb9c83fec1291d1e31`  
		Last Modified: Thu, 17 Sep 2026 21:42:44 GMT  
		Size: 178.2 KB (178249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:320177f921a6efbf1a564893d95053c977d3b135448ed423ffd0369ea9ea05d1`  
		Last Modified: Thu, 17 Sep 2026 21:42:44 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:ce5125db14bcfea3d990a55402bfcf60f510532a22a857cf3733f488e9de72b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73397490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39df342a67b1b1caf3b0b05a4421a6cc6b0e153e09cde72caf2a9cd83fcfdb1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:56 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:53:56 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:53:56 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:53:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:53:56 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:53:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:53:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b89e4b8a0431b72c663ee7a5481e98a429f4a391a8ad7a16a70cfc20133a87e`  
		Last Modified: Thu, 17 Sep 2026 21:54:11 GMT  
		Size: 248.5 KB (248468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f7e99e312594e3ac977d577523ea809adb09d77bddf9f9cf7582dc6ad0661e`  
		Last Modified: Tue, 01 Sep 2026 23:26:24 GMT  
		Size: 69.6 MB (69593938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fdef7ccc31171bcc38220c5c7aa0f5a336f81206d020ef5e3dcdcc62126a6c`  
		Last Modified: Thu, 17 Sep 2026 21:54:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:96dbd895fe68792399bf45ad8ddb89ddef63107a94519208a537cf0a74612fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc2d2abc76ed608eed890f1c6933cfb6696e2d0e55ce80212cd856cce3c1d5e`

```dockerfile
```

-	Layers:
	-	`sha256:3074097d7c507d88ed44ba20f60f3266c80263df5add829d7bee045423ce259e`  
		Last Modified: Thu, 17 Sep 2026 21:54:11 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:d927b75966c20c70fa981b086e9f0facdfaf1e4c1ba79bdbb55c915a70b15e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73104687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc741837bd34f7eebb445f5a57f21e4cf7d458ef3c79f98802c07dc4e0c7e83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:54:26 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:54:26 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:54:26 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:54:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:54:26 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:54:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:54:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e898337927197f93ecc02336ca74a48f0483d9567fbe206624cab30bdc4a1e`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c87d6cd0bfacc76bdbce7c62a92cd8c0545cfe85ace1f630659004478cd2a0a`  
		Last Modified: Tue, 01 Sep 2026 23:25:28 GMT  
		Size: 69.6 MB (69594062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2d50eb1bf33ebbe3f48b16b93d47a655b01f19a6268c596c9726ebb2d254ac`  
		Last Modified: Thu, 17 Sep 2026 21:54:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b4b0fdf068e285bb00ac34cf843ae58bc2085e7634d3ff6dee8277c81e1185f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 KB (202532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5e108b7009a31d62de1078926e2eef7c1566f7ca221ce0763e2df105c017ea`

```dockerfile
```

-	Layers:
	-	`sha256:8cb8277cf33bc773b3e00ccfe2452f9143d6eac513a820121970039dda788690`  
		Last Modified: Thu, 17 Sep 2026 21:54:43 GMT  
		Size: 177.6 KB (177619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f163bc9e0938bfaab93268257e512fb131ffaf5e51727a2f45f2145c706a1d`  
		Last Modified: Thu, 17 Sep 2026 21:54:43 GMT  
		Size: 24.9 KB (24913 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6065e1e31d337427c3cfe5efe4d9c45d406894d55e924dc87224be85e9147d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72088919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c81525543ce50597d4acfdb593256313163f9b45e52841f4d66b2732e7486c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:42 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:42:50 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:42:50 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:42:50 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:42:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:50 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:42:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:42:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eefc48c1553cc3e432e1dfe544dd3c288716693fc4f6c5cca50fe3083df55e3`  
		Last Modified: Thu, 17 Sep 2026 21:43:07 GMT  
		Size: 249.8 KB (249839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125215c6056cfe0a165d14de8a72a3546ec1167a4468ebcd93c0f403469ef15d`  
		Last Modified: Tue, 01 Sep 2026 23:25:44 GMT  
		Size: 67.7 MB (67652866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a64d79891782a3fefdc0f07b8f52814a0e658f1dd77a1e7b58401e8349df2b1`  
		Last Modified: Thu, 17 Sep 2026 21:43:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:35486a80e9a2ee691cbdeb64f6489b86176edfae9e1adaf84eddf41c743cb6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380da90e64b608604957e73a6076dec3e1e174c47fdb46440af5a16db9ad42f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ca508f45a1d526b1c6e98f3d69d0434ba0fdea16177465f30f67d3774137415`  
		Last Modified: Thu, 17 Sep 2026 21:43:07 GMT  
		Size: 177.7 KB (177655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e9304589d7c4b8894b41cb20bf47a8c00d6d33634f52667e031d238e325eb16`  
		Last Modified: Thu, 17 Sep 2026 21:43:07 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:61531e2aadc51f77a6588efe32783a55d1c745fb969e5ffaca84081faaeff1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73199678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c40d6c525658d6c6a8b09fd3d197ad7e6a1785043c6198dfb74e0ff5fbaec6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:34:06 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:34:06 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:34:06 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:34:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:34:06 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:34:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:34:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661a6a2b4af9f82534dab60bf49e17cf6e0aed44a9644bca6105010337a2026e`  
		Last Modified: Thu, 17 Sep 2026 21:34:21 GMT  
		Size: 248.1 KB (248056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f40cfba955b4fb208767a32cc904e9cf28a3e0e64e1ebc859bdfe4f763816dc`  
		Last Modified: Tue, 01 Sep 2026 23:26:33 GMT  
		Size: 69.3 MB (69276355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac5a3924b53629e0c3cce3f673d72bc1e680f3b5fb63069ba0e06dec243dd07`  
		Last Modified: Thu, 17 Sep 2026 21:34:21 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:44f4f8fdc5c677cebdcaa233177ed632b071a5e95f27f5b5bee418365f3cf520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 KB (202979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3033289eb4c050aa807d9fa5eae035f659e7aaf8d360336b9b6d31395013d815`

```dockerfile
```

-	Layers:
	-	`sha256:424093d509a103226069e4fcf1facf50c2dd10e3aa1542e3ab9a284c915dc7ca`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 178.2 KB (178208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9ecb13806099ab41888978e7254a048177990e9f8cab5bda5a44ff7f75c56f7`  
		Last Modified: Thu, 17 Sep 2026 21:34:21 GMT  
		Size: 24.8 KB (24771 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:87bc8c7b2f44e482f6296a6a4344b113a9f6372c3c11b862074a3814db4bf8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72488662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3991cc1e0cab44ea1e681e95d42b6fd8ecfcfc4fac17a944d2041bf62f9ca88b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:46:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 00:33:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 00:33:47 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 23:52:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 23:52:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e7d755fbc89975a56671fb9c66c0475cd0c3d985931f98beed5cc993d42210`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.2 KB (250238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc1383ca9979dac83a00fd2d5a8ae62102a5d700d144342a55ab6b86117926e`  
		Last Modified: Wed, 02 Sep 2026 00:34:40 GMT  
		Size: 68.4 MB (68423497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d35f2f6672565cb207b660f52eeaa4a2a188ad5d5f73a5b75641aeb89c1cac`  
		Last Modified: Thu, 17 Sep 2026 23:53:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:592625c361cc5c72c1b647687f0f7c6f9150f316e42dcb8df8e40d9ae9ac58fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 KB (202503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeaa39df0708de3406a0966fbd6cd1366bf1dc30d088f97aac3df50070506095`

```dockerfile
```

-	Layers:
	-	`sha256:811c7659160bc20377530b72805c27c5b3a0c8688d1656d09d8197f1b890b831`  
		Last Modified: Thu, 17 Sep 2026 23:53:13 GMT  
		Size: 177.6 KB (177648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:982e546cdec42ca843e32308b2912ef86279ccbd55704e5f60a653651aa9fb65`  
		Last Modified: Thu, 17 Sep 2026 23:53:13 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:bc535e12aa424d13fb963e10079a65cefbd71bb1de3e6d89c1e4b02520e2d9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72941501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3482d5b318f7eb0a87da32d82818b5ad007bf2d1ab259fcb5d144ba2f60431de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 15:04:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 15:04:05 GMT
COPY /target/ / # buildkit
# Wed, 02 Sep 2026 15:15:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 02 Sep 2026 15:15:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e37d0b14f752701961821911203ad5187201b24aff2865f93072c9c427a4c`  
		Last Modified: Sun, 16 Aug 2026 13:08:36 GMT  
		Size: 245.5 KB (245482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2541a96ffc493ef95d3b2021cc7250f84890c317940ecfe928a57b9aa793d78`  
		Last Modified: Wed, 02 Sep 2026 15:10:47 GMT  
		Size: 69.1 MB (69122621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d9ccdc412270aa6666e07f0373d8cd67fde3e0ab4466b4497895b1fdc4551e`  
		Last Modified: Wed, 02 Sep 2026 15:16:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:dcc457b16cc9d572c3821a543d20b06a97e91f97348ae35a5880f1a19a1fae13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15d6f143aa5ad5fdbb5b3f825ce8e7e4850be718eb5015894610544d384b9e4`

```dockerfile
```

-	Layers:
	-	`sha256:3f0c043a2ccad21bca61bc4aad140319c9f6f2b180e09bf870a59381441a1f19`  
		Last Modified: Wed, 02 Sep 2026 15:16:51 GMT  
		Size: 176.4 KB (176351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8534b4c8c99f11101f788d425e84b5de5d8cab77f7ae58637b34936ba38a92b`  
		Last Modified: Wed, 02 Sep 2026 15:16:51 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:498918c445d1d8ef1dd4b79894b646d7302315357f51aafc393d56319b5f7c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74182872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192d9df0fa4f720b13c94f5ad4919b811582bc1168da1a64285b1f9c9e1b7168`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:40:00 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 23:40:00 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 23:40:00 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 23:40:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:40:00 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 23:40:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 23:40:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ddfaec3be95f27dd8946c7aeea6d7456f6d56bd3d2fabdbe4078df7699d3eb`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 248.6 KB (248571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdf782217446d8f5c55dd5fedfa6da1094820bbf610bbdd9bc0564db4e82fd9`  
		Last Modified: Tue, 01 Sep 2026 23:25:53 GMT  
		Size: 70.2 MB (70220888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be055a885e084f90f4ab7f85cc68d2bf81d5f4e2b411401e1425d40657787d37`  
		Last Modified: Thu, 17 Sep 2026 23:40:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:0f18020f1cad6831dfc299959636c84dea09378c7ed96063ff307fa9b5efc526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f993874956fb619f9f305244ce23a369fd29bf8173e3865e14a5200bd2bc4d2e`

```dockerfile
```

-	Layers:
	-	`sha256:f5bd3a7f9cd199b61f552b96f2f04b2631d0515ddfdffe2bb38f212475b48ea5`  
		Last Modified: Thu, 17 Sep 2026 23:40:21 GMT  
		Size: 178.1 KB (178094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34d77d85451d2791315b8826a34e58f9a727f831ce8efce25c4f91e90e2f26bb`  
		Last Modified: Thu, 17 Sep 2026 23:40:21 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json
