## `golang:tip-alpine`

```console
$ docker pull golang@sha256:c231b9314d5a07e7a51c8ac719f6667a9ac9d543d5c011e378faf69956cc512b
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
$ docker pull golang@sha256:2110c7ac214bcc7a459b30cad746da5b98fd48d0b2c119b6b97afa70c7e0ff71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109015235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386db87314d24947cc76e15883874d8604c82fc1f7a3a6895ea1513d3f9390a7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:35:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:36:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:36:28 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:36:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:36:28 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:36:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:36:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8eb8b6088d399746cabd16e64f9dead901e8bdee4f71dfdd55e5dbc66ebe79`  
		Last Modified: Tue, 10 Nov 2026 18:36:45 GMT  
		Size: 244.5 KB (244472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd313759153838f796efbe8ecb7e9f68ae45d9185f3ee5035b06feab8320df21`  
		Last Modified: Tue, 10 Nov 2026 18:32:49 GMT  
		Size: 104.9 MB (104916932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ab30a4672a2330f085c63acb9992f44a81a50a2d5d4a59161f5ce1f269b32f`  
		Last Modified: Tue, 10 Nov 2026 18:36:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4e85bdd26248244775fc8ff5a6d7687c31a88db70c8573144d5d8564877c3ddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 KB (202687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e67057afcbf61ad5af689221896d7477b46595b1fceef6db0e550f73ec22cb`

```dockerfile
```

-	Layers:
	-	`sha256:829492caa8090e7a70a294105593bb667207bd84e5830e99de686f85f4d0c6dd`  
		Last Modified: Tue, 10 Nov 2026 18:36:45 GMT  
		Size: 177.6 KB (177589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba0dc88c9472fcab86327c85b39751bf04e1dbe8a1e0841625c0bfd3365206ed`  
		Last Modified: Tue, 10 Nov 2026 18:36:45 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:d9cb1e8a5755cc290fe3cbaa62951b0da6a9fe0b4a1c0977ba8fbde79d9c532f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105140925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751318d2868be8580c18d7cad51cc1f9365265b30351dd3c9de69c9d4513ea1c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:33:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:34:55 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:34:55 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:34:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:34:55 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:34:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:34:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346d664eb86ad1d8e169c18f59da850f11fca75507af780c6e03eac9575b92c0`  
		Last Modified: Tue, 10 Nov 2026 18:35:10 GMT  
		Size: 245.6 KB (245565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68cdfe6418416541642911d036cc03de899d8f9e4e0dfcacef501c8f5143154`  
		Last Modified: Tue, 10 Nov 2026 18:35:13 GMT  
		Size: 101.3 MB (101336802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be697c70a97f254be289465d327f520325ca1d8ddba9c5aac249e9e06d8b99c8`  
		Last Modified: Tue, 10 Nov 2026 18:35:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:de4f7c1b98a0385b9a0b0a8fa844f62c38733e9330f4cc02234caab5c16ac0c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7041ed6ea577ea42976f8e90a238a406f287ae1f3bfe397c518620e8dbad2f8a`

```dockerfile
```

-	Layers:
	-	`sha256:253080fc9c7030af23d3a2ae9fa539b86ea261c54353c200b47c3e0776c4e53f`  
		Last Modified: Tue, 10 Nov 2026 18:35:10 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:4a233d5e33689e6324ec25ba5f246058a225d910ab708c28cc242788dcc121b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104526594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6da966910fad018e450f05f821bd32d4eb4fbc2346de8c4f6caca0b5658070a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:34:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:36:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:36:22 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:36:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:36:22 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:36:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:36:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f3f9d3b9f611feae4eade5e002fd34261c311160692fb5395da366d8d423a2`  
		Last Modified: Tue, 10 Nov 2026 18:36:41 GMT  
		Size: 244.5 KB (244520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8c5d5684401dabd1fd899d30e738f679aa5d8d625523450ff2b44e95ef70d2`  
		Last Modified: Tue, 10 Nov 2026 18:32:45 GMT  
		Size: 101.0 MB (101014185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e8ceb47dc73de5a3a8db0cd4508826d8a409242b201d9fc22c68f74b9cc13d`  
		Last Modified: Tue, 10 Nov 2026 18:36:41 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d9fd0d83fd2f17ef13eb2796a455e19385a9fd3807b08617182991390cb5efac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f7b7ad3ae655c939ea506b4ee2e5b1c825583dd7f2f595f022fab663a26b67`

```dockerfile
```

-	Layers:
	-	`sha256:10519bb92f0a8296d58e4b7e5c26d80e0370ed65911ee5e5b7d86ea2f3d4af45`  
		Last Modified: Tue, 10 Nov 2026 18:36:41 GMT  
		Size: 177.0 KB (176957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:598b7559b9e997126609a5b36265fddb490509424c6ae7cf970c0b65e0d1cb45`  
		Last Modified: Tue, 10 Nov 2026 18:36:41 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:35bc5188eb92fe6666071e4f555b48647119916b75b4d2c37c2695e0f4bc2330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103758356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f69814edd3023128c06f443b196955649de858b875cd5383324bdeeec88154`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:33:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:35:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:35:10 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:35:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:35:10 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:35:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:35:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298d92af7792d02abfe2e5024ab44bfa9aa4764a7ce23de0fde89e89ebc26b65`  
		Last Modified: Tue, 10 Nov 2026 18:35:29 GMT  
		Size: 246.9 KB (246926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3e4d8481dc1f4c516e9c0d29e711572906b73996a0301834aa7672262b80ad`  
		Last Modified: Tue, 10 Nov 2026 18:32:29 GMT  
		Size: 99.3 MB (99320677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1955ff301eeee114f28e90693eb47470d319c3eb2be918356aae4111650187`  
		Last Modified: Tue, 10 Nov 2026 18:35:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:717b80d20721dedcb908e06534325f57dc0e0cfa3adad2852790f95ea9bacae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21a8329f19615c476c07621ee7a76e0dc5c3c81c231794438ecb77dc38ff65e`

```dockerfile
```

-	Layers:
	-	`sha256:21c5f50aab524366dd4ffc1cc16ed1c8ad28638341d7096bc64d5ef4565ed095`  
		Last Modified: Tue, 10 Nov 2026 18:35:29 GMT  
		Size: 177.0 KB (176995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e3a4b2ec32b4367d514cdf64103394653e5a053e4eb1a73830579a1520734a4`  
		Last Modified: Tue, 10 Nov 2026 18:35:29 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:70bfc6d096de72d11c02a544f130882835bec4faa6f77c87cfc3d44fdd7d07c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106777663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0fffc3fede7515dcd4fe4dbcd594373d8ec6d071a94835574bea45138fa6ec`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:31:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:31:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:31:09 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:31:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:31:09 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:33:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:33:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7e0437cf3974ee5db0d6c25a6eeb95c561f1b9e00c8dbe786ea0a2d0ac6f74`  
		Last Modified: Tue, 10 Nov 2026 18:33:31 GMT  
		Size: 245.0 KB (245007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0cb944cc32c8be677db6402bc98890b64e4c0bdf5c7c8b6a87327e36040b76`  
		Last Modified: Tue, 10 Nov 2026 18:31:36 GMT  
		Size: 102.9 MB (102852137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddcae52831f07ecdf32f20821a807511af0cfbb0debd36dec1d92de9832d02cc`  
		Last Modified: Tue, 10 Nov 2026 18:33:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:12b70b8e04678e799ed0b55c414ff952cef07e11c3909601fe727f3857de962e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:befc491a1c147027b00db5f20b32dccf6e6747a1afcebb8a58b91635da706de5`

```dockerfile
```

-	Layers:
	-	`sha256:929b35f117e000e7ac0375f2ff3596c457cba09186b807a59dac17aeb74128a5`  
		Last Modified: Tue, 10 Nov 2026 18:33:31 GMT  
		Size: 177.5 KB (177546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91e5ffd123988e89487399e4d3e125bede13d2c63104732d6943b26b3d63c9c2`  
		Last Modified: Tue, 10 Nov 2026 18:33:31 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:e6510935880921e217a40a4eafd8623553ac1812c8352c17701ea513ec9df93a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105694472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38cbd022fe8eec76be34b8400e0ce3496b59082f1f02b3bd85fe3536a12bdb47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:36:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:33:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:33:12 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:33:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:33:12 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:38:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:38:48 GMT
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
	-	`sha256:9af7977e7fa3bbe7e79dc06e299aeb4cd33cbc2e7c2a3def33a2d2799376f2ea`  
		Last Modified: Tue, 10 Nov 2026 18:34:32 GMT  
		Size: 101.6 MB (101625035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0954e8a6f419c86ebb35b1d770ed9328e9798e093739c7ba1e58fff0629d556f`  
		Last Modified: Tue, 10 Nov 2026 18:39:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:f3af267ec99a4f5bc06549bc7f3a03b4d4a0a44a03220a0ceba1b761260136e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0545991d98ec90fd29de06c2ea8fca19fe5716c246626e87097224795d8c4a`

```dockerfile
```

-	Layers:
	-	`sha256:88cb7ebea108ecd13245c4e18b76b06fd0e9be94e87bc12e5ba746bf4d8514fb`  
		Last Modified: Tue, 10 Nov 2026 18:39:10 GMT  
		Size: 177.0 KB (176990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:741e2dd9adebbf119cd5092325df9a7fa56bbc9e7ca5ed7a97687723c6ac4f32`  
		Last Modified: Tue, 10 Nov 2026 18:39:10 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

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

### `golang:tip-alpine` - unknown; unknown

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

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:aa75dd272e5579e9f0ddef277d0daf128b8d85c7f4dd59ef2f30db9ebc84d3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107642339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db65cbe5e7fe160b2afec88cdc44e213e7b22867c0d0dbaa968b01f7c780789`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:34:11 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:34:11 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:34:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:34:11 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:34:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:34:18 GMT
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
	-	`sha256:5a1ed5a594baa672006a3d9d986e5d24a45aba2b1302e2aae6ac4ecbfe371f57`  
		Last Modified: Tue, 10 Nov 2026 18:34:16 GMT  
		Size: 103.7 MB (103675946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472174cf21bbf865a9703f955b74d03dd7944c74221db474b33eb8e97eb1406c`  
		Last Modified: Tue, 10 Nov 2026 18:35:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:8a8df83978ee00dcdb342ac253490c25a353ce50fd61de0e783ec303954bcac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a7bc05fa9e17d08f1cb890a2e91c351f4b443968b5a068d18fa92a77851b3f`

```dockerfile
```

-	Layers:
	-	`sha256:85263ff527119e94dbc6e066493c82413d6e057c0c1b55216ee1d4689b8e270a`  
		Last Modified: Tue, 10 Nov 2026 18:35:05 GMT  
		Size: 176.9 KB (176938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4dc15353380699bdf0bae9ee2b749ebc1804357fa5a3e9bd6fc387bf51ad7d5`  
		Last Modified: Tue, 10 Nov 2026 18:35:05 GMT  
		Size: 25.1 KB (25097 bytes)  
		MIME: application/vnd.in-toto+json
