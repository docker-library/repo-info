## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:a38876f95709029177edabd9a1f4402dced165fdf63214bc6fc4e013fd9efde5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:785f97fabac0ed9926d4d33d0aaf89461a78bfdc4a0020ac7b2de5e747af86ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331483863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0abd9f5203a860c97bc25d6a6bf09a036351157d519f3a4fc9ff78b759a8b2e2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:18:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:20:15 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:20:15 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:20:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:20:15 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:20:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:20:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6a6e2839f7fa54551c6328049604d502659b22e6345aef8be3cf344a32bb1a`  
		Last Modified: Wed, 05 Aug 2026 03:20:41 GMT  
		Size: 92.5 MB (92545986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70182a89e7d87356ef54209ef5025f5029805de8d8545608195eb8152d0595e9`  
		Last Modified: Mon, 27 Jul 2026 22:08:48 GMT  
		Size: 102.0 MB (101988224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f50b5b05222ccc1ac5378b43d7bcb82b620e160b7840a3777691cda86b5048`  
		Last Modified: Wed, 05 Aug 2026 03:20:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:cbae1089e494bde87192ec3362aef70999bb8214a052c9f59ec593447eca4dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb7068fc222762367d70d1ad50aed8b5fe673cfc980e7bfa9e534f73e2dd93a`

```dockerfile
```

-	Layers:
	-	`sha256:b70e8a9d2bb1c9a73dcdb5397377cc7d308d9068c438c184916bbc5f4700c57a`  
		Last Modified: Wed, 05 Aug 2026 03:20:39 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:514002c82de17d9b7f77e0fb23d4fcd811bbc4f9d9a6dd454b84671889b1ff88`  
		Last Modified: Wed, 05 Aug 2026 03:20:39 GMT  
		Size: 28.4 KB (28389 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:acf33f08fa892a3689057277bf75c70ca44190f547f4366553858a45bf3177e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.3 MB (290278703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1794076c18b472ab7e5f989e1a2109cf45e2a02408e2c527fa55ceb4b3b1ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:30:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:33:32 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 04:33:32 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 04:33:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 04:33:32 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 04:33:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 04:33:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618fc6c8c2ab4fd3f4df78dd253c44139302caecf7526685b7b720e303f43e33`  
		Last Modified: Wed, 05 Aug 2026 04:34:00 GMT  
		Size: 66.4 MB (66410456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b961a0d50988d7c9a177ec9e923fb9a4afbedfc3d31275eec2c42aad2d0e7f`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 98.1 MB (98053000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb409047f0f155ad9bb022ef360cb979aeae80b09d64b88435005163b6e8e07`  
		Last Modified: Wed, 05 Aug 2026 04:33:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:df4a1bc66efb145f35d326e90da4e2f4c9956715ca0f2aa03e02c65cd7159b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b40abdfda86f365dff752f991f6a605f90123dac2bd21a794d6f27429fd98b`

```dockerfile
```

-	Layers:
	-	`sha256:7718a28409aac63b76ffe2b53dd24c70bf3297c7d7ad38441f0c068a9c9e085b`  
		Last Modified: Wed, 05 Aug 2026 04:33:58 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8f3c07097f0d70f5c1313e41369ddab498eda7126e8e47728c9469a3e484c60`  
		Last Modified: Wed, 05 Aug 2026 04:33:58 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0b17177adfffdaf548e24dbc0fab15ea789537b822c1dedb70c612b89621a9c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319670317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f3ee9bb299de356af60b27eb3d355f1da57e2aeb87946026b8c19a838893f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:17:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:18:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:18:59 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:18:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:18:59 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:19:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:19:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7288f127587d7efd7c507c18929f2f62a2c22bcf976fa8dff6e73beb5e172792`  
		Last Modified: Wed, 05 Aug 2026 03:19:28 GMT  
		Size: 86.6 MB (86627080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce80571b63faeb14e5839d68cda387b1895c1438d8dec5f05ca729001e5415b0`  
		Last Modified: Mon, 27 Jul 2026 22:08:35 GMT  
		Size: 96.5 MB (96548863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8628c4e22cf1c99d89b02acc9d143c60c402ea8fcd88a569cf71e2c8912f170b`  
		Last Modified: Wed, 05 Aug 2026 03:19:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:97efec8d6aaf699c1397be1f6d4cf61667f51ac365a540443efc7cb3a4f5fe1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cf2cca98e1f2275a2521af46d380c367d330693d6d16bd8f9f07c502c4c15b`

```dockerfile
```

-	Layers:
	-	`sha256:b916f2484fccd5b5000307d14088643e77b75e0ecac1927f37ce8cac95755ea4`  
		Last Modified: Wed, 05 Aug 2026 03:19:26 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afbfba1f1c8e5a7e564954f7bd29e07a891fbe7fe90794b330884bca27e8c2da`  
		Last Modified: Wed, 05 Aug 2026 03:19:25 GMT  
		Size: 28.5 KB (28522 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:305b9d91654e5daab104d925a7ec9474bde5cf0ad4b1e79fac210f9f847833ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330696082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b712e38f7dcb731f8ab6456948e6f2398a5d01660d1517633238b8116dcab12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:14:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:16:28 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:16:28 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:16:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:16:28 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:16:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:16:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed12a6feb1930e559968e2bc0bfe7d26d40716344b44941e3f2e9998b9ffc9`  
		Last Modified: Wed, 05 Aug 2026 01:41:06 GMT  
		Size: 66.2 MB (66249235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7750935cf31aeea5f417f8772d443b219a99ee63df4601fd522f6555e95d58b1`  
		Last Modified: Wed, 05 Aug 2026 03:16:57 GMT  
		Size: 90.0 MB (89972131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5a3aaa3a009e10bd7efced5fa5120668bcb54de583202a8de6e5e6ab444e4`  
		Last Modified: Mon, 27 Jul 2026 22:06:55 GMT  
		Size: 100.1 MB (100109566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f47460fb8d67c60a2cd182495922b7002635f23db39ccaac0378bd206c23a55`  
		Last Modified: Wed, 05 Aug 2026 03:16:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4b2818a4196da03691f74b092f09c7165ead1f11f1bc1e9bb336dc570f06906a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b21453b6c8da710ae3c6ef07ad1214e1c07c6b4ab9b82e8b96bd7e871ec729`

```dockerfile
```

-	Layers:
	-	`sha256:6dae0aaffb010500ea487563fb63b7c55891137984acaa61e4028530ee74b098`  
		Last Modified: Wed, 05 Aug 2026 03:16:55 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8648e5fe295de60ad41027a599a3e7312fde09ea6c2f0969497cc136e54eaf2`  
		Last Modified: Wed, 05 Aug 2026 03:16:55 GMT  
		Size: 28.4 KB (28356 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:f9dc240f8b76519200cf804012d78de8db510301a9bffb9557df36731ebc344f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.1 MB (337109211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb483817f77096581e227f21cb439c5c58a83e7edba917c0acb43181d8e6714f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:07:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:27 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206cda10cbd9dac32ecbd02a80861ff43df730ef77172b28d0e3c72a02c96ae`  
		Last Modified: Tue, 14 Jul 2026 03:49:23 GMT  
		Size: 25.7 MB (25687296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc397ad605293503e3db0dcc973f7b867a960c6167203f96e7b22c80e4c3cc`  
		Last Modified: Tue, 14 Jul 2026 12:13:50 GMT  
		Size: 69.9 MB (69851191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47461e6374968c33356e2adbad177e6df5804c45e27ae9a811fb6b6b59689ad`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 90.5 MB (90529324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83158c867f68c393c40d80d5a7ca238c6f40445a0d20991e9d1d2641b7fc173`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 98.7 MB (98699408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd6b755ab84dafd6e6ed1901dcea762b686812432b0a642128db8892ea5ab68`  
		Last Modified: Mon, 27 Jul 2026 22:08:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:58908f2fb8103bd1ca33e860ca7b641d626fa3a02fb2fdae77f2701cb74d2474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ddffb111d5fff5c4eeb4135cc63fa2a9cd0d3764287426b8ad17cd48a5b103`

```dockerfile
```

-	Layers:
	-	`sha256:601a4394674e279ee4324145400db3fd0b5798a3c058cfc1738c51665ff58a58`  
		Last Modified: Mon, 27 Jul 2026 22:08:50 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b9aa141bfdf46dcb3aeb243b8c4b77403f833018a47dad3148a82f2dcb0b6ac`  
		Last Modified: Mon, 27 Jul 2026 22:08:50 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json
