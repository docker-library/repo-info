## `golang:bullseye`

```console
$ docker pull golang@sha256:c3feb4bc19853836e788b21051b76b813a30457b3f77058991d3e170af0afa65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `golang:bullseye` - linux; amd64

```console
$ docker pull golang@sha256:a0b51fe882f269828b63e7f69e6925f85afc548cf7cf967ecbfbcce6afe6f235
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360583809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8295ad49803f411a0d583e2be9f8ff9a15729d85fc510b45217336bf4d190f9e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 21:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 21:50:39 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 21:51:28 GMT
ENV GOLANG_VERSION=1.19.5
# Wed, 11 Jan 2023 21:51:42 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Wed, 11 Jan 2023 21:51:43 GMT
ENV GOPATH=/go
# Wed, 11 Jan 2023 21:51:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 21:51:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Jan 2023 21:51:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd150679dbdb02d9d4df4457d54211d6ee719ca7bc77747a7be4cd99ae03988`  
		Last Modified: Wed, 11 Jan 2023 03:12:22 GMT  
		Size: 54.6 MB (54583611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcb68b5bd105d3f88a2c15354cff6c253bedc41d83c1da28b3d686c37cd9103`  
		Last Modified: Wed, 11 Jan 2023 21:53:48 GMT  
		Size: 86.0 MB (85984508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb106937a0f07be410ed8582e7d9a8dbfdaa33072fd6d15a11eca3b4cb90dd`  
		Last Modified: Wed, 11 Jan 2023 21:54:45 GMT  
		Size: 149.0 MB (148950222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84b8005c1782cb771645a32ea9798b29f749199af90aaf038a8847fc6f51a11`  
		Last Modified: Wed, 11 Jan 2023 21:54:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; arm variant v5

```console
$ docker pull golang@sha256:c50e04ea2d9c9b7121d9bad33dd6b038d9d6b4ef5579988e893bd8d279e1d3da
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308664094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172038a0f61069c003a4f40e45c1e6bc48a75f859bf56e515a5b6ef87747155b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:21 GMT
ADD file:37f880fde966ca6538f60068c4025b396f3e23cdf2cbc8d99c7ab2f6bb46a82d in / 
# Wed, 11 Jan 2023 01:55:22 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:25:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:25:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:55:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:55:44 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 10:58:29 GMT
ENV GOLANG_VERSION=1.19.5
# Wed, 11 Jan 2023 11:00:54 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Wed, 11 Jan 2023 11:00:56 GMT
ENV GOPATH=/go
# Wed, 11 Jan 2023 11:00:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 11:00:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Jan 2023 11:00:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:07e0d63e97bf89a5c9e120008604cfeebc92d155c136c0f88685e1f70c16fd1a`  
		Last Modified: Wed, 11 Jan 2023 02:00:09 GMT  
		Size: 52.5 MB (52529956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdae3cec496b20668efecc8632139b94b3403a6c16339bc73fc160e86e193eb`  
		Last Modified: Wed, 11 Jan 2023 02:32:44 GMT  
		Size: 5.1 MB (5070983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff68f7018ae97bce79d8cf74dfadbc72f7ee992a4c03f7cca5af31152b32768`  
		Last Modified: Wed, 11 Jan 2023 02:32:45 GMT  
		Size: 10.6 MB (10573811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb73cf9544762533c9045dd08c47a64563ffe022966a8ba513276a9535f01c`  
		Last Modified: Wed, 11 Jan 2023 02:33:09 GMT  
		Size: 52.3 MB (52321248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7144f2f3ce9146a25e461156e68faada27e11d0d84ad7f1ad3db1f58a11a87f7`  
		Last Modified: Wed, 11 Jan 2023 11:04:46 GMT  
		Size: 68.9 MB (68886105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903ec06841815a9ee31bcbe24eaad63464e4f45bf42643d61b2ab6c95dfdc9c2`  
		Last Modified: Wed, 11 Jan 2023 11:05:27 GMT  
		Size: 119.3 MB (119281865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cff9bad9273af7517f0f2cdc99e88dd1b94d90054451acbedbc8d2f61786d1`  
		Last Modified: Wed, 11 Jan 2023 11:05:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; arm variant v7

```console
$ docker pull golang@sha256:4f11de0ded0cea2c67e133eb8540a20cb211899098319fe2c5a8b9531eeb704f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297375611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c584579c62b1cfad64252dce0221fb3fb6eca28526677dda51739240d900516`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:17 GMT
ADD file:48f6407691a382c3ad731f05f78d4210efd40f1a00abfd6c043d8401c6ca1811 in / 
# Wed, 11 Jan 2023 04:00:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:33:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:33:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 04:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:49:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:49:05 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Jan 2023 00:50:36 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 00:51:03 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Thu, 12 Jan 2023 00:51:06 GMT
ENV GOPATH=/go
# Thu, 12 Jan 2023 00:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Jan 2023 00:51:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Jan 2023 00:51:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d705c97ea3a2300e9dda9a18ff662a98c2811b41147a15d4f4791f475ce8be47`  
		Last Modified: Wed, 11 Jan 2023 04:07:17 GMT  
		Size: 50.2 MB (50190808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40c8c22d251f4b5db1459714e722a41f58f37155eb88da1b4155fd032f90153`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 4.9 MB (4931090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97570844854b4122edbc4c60110b4f0690133f761a66c1d6b732b80d4e1b26be`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 10.2 MB (10217786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a51a81f69b9de7a348ea8adb056e02781fc7587fffc6c2ca9d30983b6fa866`  
		Last Modified: Wed, 11 Jan 2023 04:44:20 GMT  
		Size: 50.3 MB (50343979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24052427cf9b94ce6cd719ca41dd5c791783a7f5137ea8d50942d32eff0e1a7`  
		Last Modified: Thu, 12 Jan 2023 00:55:18 GMT  
		Size: 64.9 MB (64909080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea7f922475e1af6e1a529bdafad09ed646a106201da43d6ffa605256b7381e4`  
		Last Modified: Thu, 12 Jan 2023 00:56:31 GMT  
		Size: 116.8 MB (116782742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea81aad3ea90e532f589ee15b1caed67ed72c0aa2ce1784c58c16a5d608340f`  
		Last Modified: Thu, 12 Jan 2023 00:56:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f50c722225483a72c4695201998b1f95c31b13a91ddae61c16182504877b62c1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.0 MB (320950336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07367a8624a95e9bebe96862418d75af9acffe325141ca66ab508abc7be1435f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:24:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:24:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:34:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:34:04 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 17:34:49 GMT
ENV GOLANG_VERSION=1.19.5
# Wed, 11 Jan 2023 17:35:00 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Wed, 11 Jan 2023 17:35:02 GMT
ENV GOPATH=/go
# Wed, 11 Jan 2023 17:35:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 17:35:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Jan 2023 17:35:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b716680367d1dac0e54c48f75506323e0bb03628542a0fd6db39efeeee9adf5`  
		Last Modified: Wed, 11 Jan 2023 03:31:34 GMT  
		Size: 5.1 MB (5149712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0855378f8903bde22cfbcee08cd239678716cf01f24a3fca9478ef4121a84d91`  
		Last Modified: Wed, 11 Jan 2023 03:31:35 GMT  
		Size: 10.9 MB (10873659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb8dc93d4197860c2bff47f2c2f280c2dd8ed699e7b3241aa325ecee53c7d7`  
		Last Modified: Wed, 11 Jan 2023 03:31:51 GMT  
		Size: 54.7 MB (54682717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530999854f4629231859226fd635c5088244ca7736053631fe412d6325352e6e`  
		Last Modified: Wed, 11 Jan 2023 17:36:59 GMT  
		Size: 81.4 MB (81393328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662d92c7fcc0804797af812b859643cc18b0211dceb5619849be243a03929832`  
		Last Modified: Wed, 11 Jan 2023 17:37:42 GMT  
		Size: 115.2 MB (115168906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5168518e9fd0cf96a560fc50141a34aff0b95dcc0e7d3e8bdfc9a4f1e3d3a9fb`  
		Last Modified: Wed, 11 Jan 2023 17:37:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; 386

```console
$ docker pull golang@sha256:aac0b0bfc3cb5f70e36c7e07a6a089f6fe5bcda4f4a8e90aa7fb84d68c504377
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.5 MB (335505337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918fc1e4b56b60b938dd41b80dc30f573a642d25c292ef3d5e0ab3e1af7824f2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:51 GMT
ADD file:92d8f809db3287489506ac143940f0e87d91ffd2d40c99318ab865e9fae1e6d4 in / 
# Wed, 11 Jan 2023 03:15:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:46:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 18:26:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 18:26:55 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 18:28:14 GMT
ENV GOLANG_VERSION=1.19.5
# Wed, 11 Jan 2023 18:28:28 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Wed, 11 Jan 2023 18:28:29 GMT
ENV GOPATH=/go
# Wed, 11 Jan 2023 18:28:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 18:28:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Jan 2023 18:28:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e322a78778338013392b4956017b1d3ad99541f9ce0749e46105a6a52ddfb637`  
		Last Modified: Wed, 11 Jan 2023 03:21:32 GMT  
		Size: 56.0 MB (56005290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570aab5be6ef21ad7a5b183a409e28f826d5c384d45be14e506f76c10331f7ab`  
		Last Modified: Wed, 11 Jan 2023 03:54:38 GMT  
		Size: 5.3 MB (5290942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edecabcd081a0baace43bc2d9d5c85fab7cba301d9919dc0796b4733bd40a77f`  
		Last Modified: Wed, 11 Jan 2023 03:54:38 GMT  
		Size: 11.0 MB (11032539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3424ca66696ab7b69ec8fc82efda8381a70781a83af075cb271e01b9d16f28bd`  
		Last Modified: Wed, 11 Jan 2023 03:54:59 GMT  
		Size: 55.9 MB (55922991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a8281838dd281fc18e7a39eb3dab0ad2a50133401d59f80e1ba02a7854fcd`  
		Last Modified: Wed, 11 Jan 2023 18:31:49 GMT  
		Size: 87.2 MB (87180902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1a588d3fd259f2e92d45ee448a79caafeab466e59dad65199c7a3d1db020f4`  
		Last Modified: Wed, 11 Jan 2023 18:32:44 GMT  
		Size: 120.1 MB (120072548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd093d47cc7d629fb403e3ed406e2f5628e22b5bb9693d8a2536d91feda8f15`  
		Last Modified: Wed, 11 Jan 2023 18:32:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; mips64le

```console
$ docker pull golang@sha256:8d568ee540cef08992fd46899a49f0bae03a9f22bf42c03ddc3f28d6af77ac00
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3bf09f90ab3d538105e84996cdfde2dd5e9c0232c5e07f7fa0ac42ade9f19e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:33:42 GMT
ADD file:8c29f17eac3e24c302d9d5569b89e9c08432801b4ae509971a7b4981c1946a6e in / 
# Wed, 11 Jan 2023 16:33:48 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:21:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:22:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 20:16:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 20:16:18 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Jan 2023 20:29:26 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 20:41:56 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Thu, 12 Jan 2023 20:42:04 GMT
ENV GOPATH=/go
# Thu, 12 Jan 2023 20:42:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Jan 2023 20:42:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Jan 2023 20:42:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ed9c81424eb02ba70b9582fe73080191ccd4486689354a607c1eb45a6129c865`  
		Last Modified: Wed, 11 Jan 2023 16:42:37 GMT  
		Size: 53.2 MB (53245158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9374a6c2b903c210b287514b63a17b6d52732a6b2652058450b82ac8067f0bdc`  
		Last Modified: Wed, 11 Jan 2023 17:43:00 GMT  
		Size: 5.1 MB (5124172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a91d6107a086f391d63672b23562ce046d3602c73826aad883cf070c1726ca`  
		Last Modified: Wed, 11 Jan 2023 17:43:02 GMT  
		Size: 10.7 MB (10662140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9930e377d464d7aaeebbc0449b70826e0e383ea39dc0e150802d2735ac297c`  
		Last Modified: Wed, 11 Jan 2023 17:43:50 GMT  
		Size: 53.3 MB (53305246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6cbf23b6519f37f33664de6da1d43bc8473e4788edc52f106ab7a0afb996e4`  
		Last Modified: Thu, 12 Jan 2023 20:56:18 GMT  
		Size: 66.9 MB (66856541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8025c0998d8b4894b24e94d858b4a3b8375d1b82b8c953f55131e46394c5dea`  
		Last Modified: Thu, 12 Jan 2023 20:57:54 GMT  
		Size: 115.1 MB (115078050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cb68982ff8eb78cc40b80f4bc0c23a0cf728abfd6cba61478210ef1789263d`  
		Last Modified: Thu, 12 Jan 2023 20:56:40 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; ppc64le

```console
$ docker pull golang@sha256:bbf90b34242453dd6097f60921ba8b2cb9164c4cbc4c02c1fcde79cea0398172
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.8 MB (330838342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088f1acbba5ae35325883f7395ecdc88f08e5f5d849d20d6d7123379d41c3219`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:05 GMT
ADD file:9b8f1afc3870e9ea3bacdbf146017c3fdebee0140a9ad896fca12bc5a1927c0a in / 
# Wed, 11 Jan 2023 03:49:09 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 07:15:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 22:15:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 22:15:41 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 22:16:32 GMT
ENV GOLANG_VERSION=1.19.5
# Wed, 11 Jan 2023 22:16:58 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Wed, 11 Jan 2023 22:17:04 GMT
ENV GOPATH=/go
# Wed, 11 Jan 2023 22:17:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 22:17:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Jan 2023 22:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ab68a4092b73f1d14a0c9ccbe7c004408a6b0123b637274d22899b983919c917`  
		Last Modified: Wed, 11 Jan 2023 03:54:58 GMT  
		Size: 58.9 MB (58897136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82767595e0d312840f3377a13b01e75755e3d2ea746a167b9ac4b9f0df4ea3f4`  
		Last Modified: Wed, 11 Jan 2023 07:25:55 GMT  
		Size: 5.4 MB (5413012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9c6ddc1a974f319bc514bec61ed28b2a96883198d3147b839997cd0882a430`  
		Last Modified: Wed, 11 Jan 2023 07:25:56 GMT  
		Size: 11.6 MB (11629738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc74a709656cc014af14517d8435f3ce3eb9c8987b7a80399ec8b2652e6fa9`  
		Last Modified: Wed, 11 Jan 2023 07:26:24 GMT  
		Size: 58.9 MB (58866361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a3064bb05b05155d48e61d76644c02ebd434294978910316d9d5954cedc3d8`  
		Last Modified: Wed, 11 Jan 2023 22:19:55 GMT  
		Size: 80.4 MB (80441859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa9a18b5e264fd41b60cc9b0fe203e3ec3db6279ce75a4612f7c0ce511bdeb0`  
		Last Modified: Wed, 11 Jan 2023 22:20:38 GMT  
		Size: 115.6 MB (115590080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827dc2291ceb1d430aaf22f6654da13a6b7fdb0846cd689d8f11eff0446fab7c`  
		Last Modified: Wed, 11 Jan 2023 22:20:12 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:bullseye` - linux; s390x

```console
$ docker pull golang@sha256:41569aff03b6ed6ca74b730feb9a0bf7af7ae5112aed017e2c11b93f7d0677c2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.0 MB (308000085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2f0dd3f8fc53feb8a3331f3f372caa09aa4a67a27a2c37391ef25a266a1368`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:04 GMT
ADD file:a605485c9a58f2aaddd6bfcf07e5151b73e50e298efd5e961994458a9e5a0198 in / 
# Wed, 11 Jan 2023 02:22:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:48:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:48:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:49:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 12:56:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 12:57:04 GMT
ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 12:58:33 GMT
ENV GOLANG_VERSION=1.19.5
# Wed, 11 Jan 2023 12:59:15 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	url=; 	case "$arch" in 		'amd64') 			url='https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz'; 			sha256='36519702ae2fd573c9869461990ae550c8c0d955cd28d2827a6b159fda81ff95'; 			;; 		'armel') 			export GOARCH='arm' GOARM='5' GOOS='linux'; 			;; 		'armhf') 			url='https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz'; 			sha256='ec14f04bdaf4a62bdcf8b55b9b6434cc27c2df7d214d0bb7076a7597283b026a'; 			;; 		'arm64') 			url='https://dl.google.com/go/go1.19.5.linux-arm64.tar.gz'; 			sha256='fc0aa29c933cec8d76f5435d859aaf42249aa08c74eb2d154689ae44c08d23b3'; 			;; 		'i386') 			url='https://dl.google.com/go/go1.19.5.linux-386.tar.gz'; 			sha256='f68331aa7458a3598060595f5601d5731fd452bb2c62ff23095ddad68854e510'; 			;; 		'mips64el') 			export GOARCH='mips64le' GOOS='linux'; 			;; 		'ppc64el') 			url='https://dl.google.com/go/go1.19.5.linux-ppc64le.tar.gz'; 			sha256='e4032e7c52ebc48bad5c58ba8de0759b6091d9b1e59581a8a521c8c9d88dbe93'; 			;; 		's390x') 			url='https://dl.google.com/go/go1.19.5.linux-s390x.tar.gz'; 			sha256='764871cbca841a99a24e239b63c68a4aaff4104658e3165e9ca450cac1fcbea3'; 			;; 		*) echo >&2 "error: unsupported architecture '$arch' (likely packaging update needed)"; exit 1 ;; 	esac; 	build=; 	if [ -z "$url" ]; then 		build=1; 		url='https://dl.google.com/go/go1.19.5.src.tar.gz'; 		sha256='8e486e8e85a281fc5ce3f0bedc5b9d2dbf6276d7db0b25d3ec034f313da0375f'; 		echo >&2; 		echo >&2 "warning: current architecture ($arch) does not have a compatible Go binary release; will be building from source"; 		echo >&2; 	fi; 		wget -O go.tgz.asc "$url.asc"; 	wget -O go.tgz "$url" --progress=dot:giga; 	echo "$sha256 *go.tgz" | sha256sum -c -; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 'EB4C 1BFD 4F04 2F6D DDCC  EC91 7721 F63B D38B 4796'; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys '2F52 8D36 D67B 69ED F998  D857 78BD 6547 3CB3 BD13'; 	gpg --batch --verify go.tgz.asc go.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" go.tgz.asc; 		tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ -n "$build" ]; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends golang-go; 				export GOCACHE='/tmp/gocache'; 				( 			cd /usr/local/go/src; 			export GOROOT_BOOTSTRAP="$(go env GOROOT)" GOHOSTOS="$GOOS" GOHOSTARCH="$GOARCH"; 			./make.bash; 		); 				apt-mark auto '.*' > /dev/null; 		apt-mark manual $savedAptMark > /dev/null; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		rm -rf /var/lib/apt/lists/*; 				rm -rf 			/usr/local/go/pkg/*/cmd 			/usr/local/go/pkg/bootstrap 			/usr/local/go/pkg/obj 			/usr/local/go/pkg/tool/*/api 			/usr/local/go/pkg/tool/*/go_bootstrap 			/usr/local/go/src/cmd/dist/dist 			"$GOCACHE" 		; 	fi; 		go version
# Wed, 11 Jan 2023 12:59:35 GMT
ENV GOPATH=/go
# Wed, 11 Jan 2023 12:59:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 12:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Jan 2023 12:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:88b68ca7ea4f57b6a28bed828673ab2975209726cda9d30ec7f98f640c0edecc`  
		Last Modified: Wed, 11 Jan 2023 02:26:32 GMT  
		Size: 53.3 MB (53258446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1925ea73774ccbedefa921e7fc71ef1331934c007223aa03923d58253b80a5e7`  
		Last Modified: Wed, 11 Jan 2023 02:56:37 GMT  
		Size: 5.1 MB (5146970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba901cfdb734c7bf529ae6983af3e4cbee77886b57959083ac3b6b1247c7f9a`  
		Last Modified: Wed, 11 Jan 2023 02:56:38 GMT  
		Size: 10.8 MB (10766016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f48eb029238d0ca62cad138a9fd5d5c2e2dd455eb46f8cec13b8a78c07a488`  
		Last Modified: Wed, 11 Jan 2023 02:56:54 GMT  
		Size: 54.1 MB (54054656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b055b9f119bb29f094a9abdcf47de13ffc2ea03b29468925823796c25f33327`  
		Last Modified: Wed, 11 Jan 2023 13:02:16 GMT  
		Size: 65.7 MB (65687728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedafa05142ad3b65ccfb11a012fbd51af8d64018195e1c7c5749e03fe89c607`  
		Last Modified: Wed, 11 Jan 2023 13:02:47 GMT  
		Size: 119.1 MB (119086114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08bf3e5f13bce346dfb324130b2d5316db4e66b0ff0dc79c7daee3a76254e19`  
		Last Modified: Wed, 11 Jan 2023 13:02:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
