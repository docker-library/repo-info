## `golang:tip-alpine`

```console
$ docker pull golang@sha256:329c43fcbd8174626c01469cf995ff9ae44b93df0802b737ea1220d64ee1d70f
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
$ docker pull golang@sha256:a2a2aa16aec97f875e6655f85d5ee9e19e84e2b88c53e3768d4bdd351d3bb79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106744936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bca2c29c0bb8ac580bdcd65a6bfceb98fbe2a65bee13912c4359e50b93ce973`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:33:39 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:39 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:39 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3480c89f04cb17034069a3b10391002031518493647b34e3571431bf07eacaf`  
		Last Modified: Mon, 20 Jul 2026 22:33:58 GMT  
		Size: 245.1 KB (245063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996313dc711ebc6dde48ca5a92f77465a96a6a3e81dc2e76b792d182d5ec5dfb`  
		Last Modified: Mon, 20 Jul 2026 22:33:43 GMT  
		Size: 102.7 MB (102653324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6157ee54ee618f43b379aa6dcb907788e083ec79037a7a8ed0940e2964a88cee`  
		Last Modified: Mon, 20 Jul 2026 22:33:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d3629a752f3021e59ee4c115aae95ca88724ab4e7926764bc8e4d9a25404eee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b27242abbe280274efda3a091735cc432cedd352645deeec4c1807d2c00a12`

```dockerfile
```

-	Layers:
	-	`sha256:cd79838612b62905378ea9e0a9092033bc9b5466dd98a49047dab8d0202ce409`  
		Last Modified: Mon, 20 Jul 2026 22:33:58 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa4aee14a8938ea759c0fe1617ff90c103580e3afb75427c7381384e8aaa557`  
		Last Modified: Mon, 20 Jul 2026 22:33:58 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:bd1a8fbf9aaaa273f33fcd6593b9c8beeb17052b063a63a3ba5346a81a979823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102498683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267455f7e5c3cc6188517adf1e85a288ca7b2870e1a3c15ccf3f308f0c285ec1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:30:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:33:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:53 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:53 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf16b8412ae160a85ff8a26bbf2dc32c065c893f4990279ad5865a6da5fecf28`  
		Last Modified: Mon, 20 Jul 2026 22:34:08 GMT  
		Size: 246.1 KB (246138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e68a1bf9bfd0675cb91025a525421a6b28342a296853e410a96dd84f1694c`  
		Last Modified: Mon, 20 Jul 2026 22:34:10 GMT  
		Size: 98.7 MB (98698937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36daeec30085f8ac90c50e0841797f9162dde60dc00acf28061273f34de5d865`  
		Last Modified: Mon, 20 Jul 2026 22:34:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9173e39252d455d99805b0ce7a88250b320ca253734ed08d439ab6f145505046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:609b70386d2411e2f9a3d18b94fdd3c6f9f529bed72b2799d1ddb78c27b22261`

```dockerfile
```

-	Layers:
	-	`sha256:f7fae5f7b955da9d028ef40771ca120f1d9929fa92896b597f965c7cf9f1ebb5`  
		Last Modified: Mon, 20 Jul 2026 22:34:08 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:095345691dffb171865951428914dd89e28b0ae1c2d093453d29ebdd6af46540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101896770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158ce4921fb4469079f98672f89ff1768cba77be5fbd29db2f4cb6e99d710431`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:34:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:37:41 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:37:41 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:37:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:41 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:37:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:37:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7923e2a9934ca11c0502ffd59a4a29ff8dda7e4f1a77f051e23f6e70a33fbcc3`  
		Last Modified: Mon, 20 Jul 2026 22:37:59 GMT  
		Size: 245.1 KB (245118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3cf11081442ca41c8c94a12c322db133db9da472490dbb51ee2f88c175ca53`  
		Last Modified: Mon, 20 Jul 2026 22:35:58 GMT  
		Size: 98.4 MB (98390879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fae8c7d85584681744b2cffb7c7746683f067051d6af593ceb0a0ac221c595`  
		Last Modified: Mon, 20 Jul 2026 22:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d96081e8495b7bb994336c3071f6d2a122b81cd29bb7647c306080515dd8cb07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2fac5ee2398a75d65c81a8c4942428720ba5c65ee548c4ad1dc5d5434c99a1`

```dockerfile
```

-	Layers:
	-	`sha256:b789a17b4e7ca7bd3f0ab8164cc85c4310b9fa0c5ca2e386b8bd26028bde2340`  
		Last Modified: Mon, 20 Jul 2026 22:38:00 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a929baa12a6eefdedccc1aa5bbcfe2670fe3e412344a7b056ca7ad5cedb7568d`  
		Last Modified: Mon, 20 Jul 2026 22:37:59 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:cd6f8ded22cdd2984bc4ec3c136231ba6eb8d0f380949e40f203d45a476a3859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101302047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fdc8605d2f10b2fe89faee5cdb2e4e898d36d45413a08c2675662e98e7be1e9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:33:15 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:15 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:15 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5c2e859634a65b5c8656f38bffb503fee74e20cf577c8ff4a2f00de3b6a3da`  
		Last Modified: Mon, 20 Jul 2026 22:33:34 GMT  
		Size: 247.5 KB (247503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a531370fa7ce0b91717a7494de070627772fae8c89a31a138f623b83fb14c3f`  
		Last Modified: Mon, 20 Jul 2026 22:33:19 GMT  
		Size: 96.9 MB (96871349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6e152bab01c695cdc073f624343a3ac8e5ca77f5316307d7ed030f77d89022`  
		Last Modified: Mon, 20 Jul 2026 22:33:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e10a8dff887ebabfd5dddd26db8d52cdfcefee57a36c64846e65af977d9a63ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405c65f85cbadfacf2e3b55c5ff2cf968e6a856bf066a8d0aeab0cd7502bf6a8`

```dockerfile
```

-	Layers:
	-	`sha256:8ce16f7c38f10bb723adc7eb959c06c1321db3f30907a2e93a44dedb5764345b`  
		Last Modified: Mon, 20 Jul 2026 22:33:34 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04559ae144658222aba7ab26414e9b6b5c6e8fc456d1ab0d932ba4e8251818a5`  
		Last Modified: Mon, 20 Jul 2026 22:33:34 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:64d8a020bf39ede7288f72c52dffdd2d2d652707ef296f29052ef1d3bb246de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104365982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaef2efebf44fbed1295bcd2860deda61e4a08486cc235fcc3af5fa21a0a9e39`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:34:05 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:05 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:05 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:34:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:34:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851b649130f29d48f5e14d726cb963d98ddbe9dd401812199dcb123f785ef91d`  
		Last Modified: Mon, 20 Jul 2026 22:34:22 GMT  
		Size: 245.6 KB (245594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d0808d45d845a665453ee563edaf4321797e8bebbff828b9a8fe359d36560f`  
		Last Modified: Mon, 20 Jul 2026 22:34:16 GMT  
		Size: 100.5 MB (100450088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd48a76bc7824e24395a6908b4808ebd41cd0e3eecc8a8f20ce4684fdd56b11`  
		Last Modified: Mon, 20 Jul 2026 22:34:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:b951d8914c135788ba11a01968b4bcf91a811810f0182df91da9c9c09c5cc25c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cce3f320065f4b458f19ce0c16736c272d5062d01c1984b3103c215b00c9adb`

```dockerfile
```

-	Layers:
	-	`sha256:7cc63c3ba518d83f3a623b5addd3f3fa01f6dfab08de811b787dc129f261b619`  
		Last Modified: Mon, 20 Jul 2026 22:34:22 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7aab5413b47c5a99aff00a490f928b4d126791409c0cf588d7ef43697b70013`  
		Last Modified: Mon, 20 Jul 2026 22:34:22 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:27dca878c4576455cc63d2a39c45c6c926af148de1c189278ab88933eb018827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103104713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36c8559eee420a617875a990a69658bf555e279610e4bdfaf513db9590c83dd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:39:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:34:22 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:22 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:22 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:39:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:39:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513cf55da4f511af1181f5666ee6ba6684d30a3d11d966a278a3363f187eb322`  
		Last Modified: Mon, 20 Jul 2026 22:40:23 GMT  
		Size: 247.9 KB (247917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17a0421053a5709df860da09f4bd3b9d442169c5231e73c4aa0684c63bd57e9`  
		Last Modified: Mon, 20 Jul 2026 22:35:31 GMT  
		Size: 99.0 MB (99043239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce799466362b14dff0d6c26f0e7201b8e8c94130c883c73f5b096b197cc11b9`  
		Last Modified: Mon, 20 Jul 2026 22:40:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:3d83404c832ff1f891703b6e98699dde0f31c74cd1dd52074e68d21067a17a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8618020665bbc5c00d626761fc4c7e31563e037e63382c1d11546234fe868359`

```dockerfile
```

-	Layers:
	-	`sha256:c89b70e385cfa349319001934fe618300935c54eb96ca1968a1a719779c84a19`  
		Last Modified: Mon, 20 Jul 2026 22:40:23 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfea46d2006fdd9d6b3db839c5dc42dda3b8b5a29b7a32eebcf41ed5a6b2d96d`  
		Last Modified: Mon, 20 Jul 2026 22:40:22 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:2b431309d10a86d24831ce5effef7ece3a47585ccd5da235b44ac56b556b5d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103821007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9d959ad076e8f333b44f99eb0453de20b6c7b1507fe00c6aaa2ce5d79aa072`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 07:35:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 21 Jul 2026 20:58:33 GMT
ENV GOTOOLCHAIN=local
# Tue, 21 Jul 2026 20:58:33 GMT
ENV GOPATH=/go
# Tue, 21 Jul 2026 20:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 20:58:33 GMT
COPY /target/ / # buildkit
# Tue, 21 Jul 2026 21:48:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 21 Jul 2026 21:48:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2021d7589f6c18103a6d7e004a2611e54bd2e48edc8f74827e7357bba545c1fe`  
		Last Modified: Thu, 18 Jun 2026 07:38:04 GMT  
		Size: 245.5 KB (245484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2e77c03a59e50a8d5710adc7e547a0252e30cba58dfcf9130f6c6880681239`  
		Last Modified: Tue, 21 Jul 2026 21:05:40 GMT  
		Size: 100.0 MB (100001008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c99a8a3a3d17a82568bcc2d913c94c65e7157257bbe9266026876fde40a03e4`  
		Last Modified: Tue, 21 Jul 2026 21:50:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e859e7c4260ee1e260d4ecc891825aec519d785b148332b377f78802786ad58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e9733f5c636c9b164a10dc64898ed174ce14cfb872394b198eaa41011ac008`

```dockerfile
```

-	Layers:
	-	`sha256:be53349b175dd7723f2bb7e65a2d487f633638c3818263060b43dd87ceb6e1eb`  
		Last Modified: Tue, 21 Jul 2026 21:50:00 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d9211f02e97aac202f5aa1c846fa47cb8708daa9d265e5c045398b4b62fb36b`  
		Last Modified: Tue, 21 Jul 2026 21:50:00 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:41525d0c2e9431a43362f8dbeb99c7250b15ffcf92fcb16aae706e418b784f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105072910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1769c12f7b953e2556b23648f3840995a31c6b0e4da3732260990b6b2d6e8547`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:35:13 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:35:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:35:11 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:35:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:35:11 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2577ad6efa52b7949dd0e7ddce7f61a528bdb3563a21c8ba967af3106e95697f`  
		Last Modified: Mon, 20 Jul 2026 22:36:00 GMT  
		Size: 246.2 KB (246150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80917ab9f5dd2699aeeac6d177e78fe0f73c25e06b88f3586f9b3e010b46f3a`  
		Last Modified: Mon, 20 Jul 2026 22:36:03 GMT  
		Size: 101.1 MB (101117281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b740a8bfc9e4f7378529e731b19b190bfba102713d2bcb68a9fac7df52a947b9`  
		Last Modified: Mon, 20 Jul 2026 22:36:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e121b5d49b824bd6e546fa2711d2a3b6d4438ddf48646d5ae5be8038c85a885a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7de0e36d25e6ffb01f4b52da3f206d247092775931a214ae45730dba6d6c07`

```dockerfile
```

-	Layers:
	-	`sha256:658bfe64f6535f7383193fa57b04f19c29133f9d8f51e2c4698f9bc1246790cf`  
		Last Modified: Mon, 20 Jul 2026 22:36:00 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43aa556220df7cade21b4d20c8f3c28d6270b3705f42a3aa640166961cfbf118`  
		Last Modified: Mon, 20 Jul 2026 22:36:00 GMT  
		Size: 24.9 KB (24925 bytes)  
		MIME: application/vnd.in-toto+json
