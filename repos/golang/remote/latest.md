## `golang:latest`

```console
$ docker pull golang@sha256:bb9811fad43a7d6fd2173248d8331b2dcf5ac9af20976b1937ecd214c5b8c383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 10
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `golang:latest` - linux; amd64

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

### `golang:latest` - linux; arm variant v5

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

### `golang:latest` - linux; arm variant v7

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

### `golang:latest` - linux; arm64 variant v8

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

### `golang:latest` - linux; 386

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

### `golang:latest` - linux; mips64le

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

### `golang:latest` - linux; ppc64le

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

### `golang:latest` - linux; s390x

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

### `golang:latest` - windows version 10.0.20348.1487; amd64

```console
$ docker pull golang@sha256:4ce03070757425f9bac8cdaad3bb7015f19d91220cbbd5b81181dc2a76a6f4a3
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1570182964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722e0f6f29d725768c978116de3fd6291a14e6850e1278faf0bc07642a780496`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 02:57:40 GMT
ENV GIT_VERSION=2.23.0
# Thu, 12 Jan 2023 02:57:41 GMT
ENV GIT_TAG=v2.23.0.windows.1
# Thu, 12 Jan 2023 02:57:42 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/MinGit-2.23.0-64-bit.zip
# Thu, 12 Jan 2023 02:57:42 GMT
ENV GIT_DOWNLOAD_SHA256=8f65208f92c0b4c3ae4c0cf02d4b5f6791d539cd1a07b2df62b7116467724735
# Thu, 12 Jan 2023 02:58:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 02:58:23 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 02:58:47 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 03:16:17 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:19:43 GMT
RUN $url = 'https://dl.google.com/go/go1.19.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167db91a2e40aeb453d3e59d213ecab06f62e1c4a84d13a06ccda1d999961caa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 03:19:45 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fc8728d9c7bf65edf893fd902f8b1bd780f93623858960c9db79e39922b169`  
		Last Modified: Thu, 12 Jan 2023 03:47:24 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7935a4c648078e79f67a11bcd5908e251110dd6c5a4ee49a607f332dd25af9`  
		Last Modified: Thu, 12 Jan 2023 03:47:20 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d257f8b122044547f89f00f58661b25aca97c92f3831e7aaa11975639b6e35d4`  
		Last Modified: Thu, 12 Jan 2023 03:47:20 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95acaa75c1852ba1320c5db382b01f587badb615b6746b59be27eedcf96ab667`  
		Last Modified: Thu, 12 Jan 2023 03:47:20 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5201ba65043fa621c187729f18aecf4c549cdfa12cd6d8cab7a901d893f3a8a8`  
		Last Modified: Thu, 12 Jan 2023 03:47:29 GMT  
		Size: 25.7 MB (25702230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a317a349bca5ab28ba7c1ce039928a56390f7e7a8d7ddec07efcc1c9883e5d`  
		Last Modified: Thu, 12 Jan 2023 03:47:18 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8850296b8fbb853a6eb6341f7484cd4bc622e9f679f12c4123eddf08b7f398fb`  
		Last Modified: Thu, 12 Jan 2023 03:47:18 GMT  
		Size: 554.2 KB (554212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80b3d62f45a345eaac7caba0cdc514011cc61ea8f9d7d7b82d1bd4f8f3dbea4`  
		Last Modified: Thu, 12 Jan 2023 03:50:53 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320dc1bc3ac081a72fbca97a699b20068d92c70b3caaec8ca53036ab37509933`  
		Last Modified: Thu, 12 Jan 2023 03:51:58 GMT  
		Size: 157.9 MB (157885976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230636fcbea662dc69129c73285f4376c0b83a3222e8d438ec859d14ee1201b8`  
		Last Modified: Thu, 12 Jan 2023 03:50:53 GMT  
		Size: 1.6 KB (1569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17763.3887; amd64

```console
$ docker pull golang@sha256:f93aa946dfb0f63c959346db4774f7da07aeb4235c143c18abfff022e2ec8809
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1891409863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e904ca31de3dbff4426d4c2e0f72424ed7e97542f474914f3c4a47f1dd1193`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 03:01:55 GMT
ENV GIT_VERSION=2.23.0
# Thu, 12 Jan 2023 03:01:56 GMT
ENV GIT_TAG=v2.23.0.windows.1
# Thu, 12 Jan 2023 03:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/MinGit-2.23.0-64-bit.zip
# Thu, 12 Jan 2023 03:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=8f65208f92c0b4c3ae4c0cf02d4b5f6791d539cd1a07b2df62b7116467724735
# Thu, 12 Jan 2023 03:02:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 03:03:01 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 03:03:35 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 03:20:09 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:23:52 GMT
RUN $url = 'https://dl.google.com/go/go1.19.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167db91a2e40aeb453d3e59d213ecab06f62e1c4a84d13a06ccda1d999961caa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 03:23:54 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203425975bec1802428fad91a2e5f01172b161062c12eddf729e548bf7e134e0`  
		Last Modified: Thu, 12 Jan 2023 03:48:09 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80e42e19ab862b4adea06f1995e1f5cbb2c11ad8d68ae4a7bb5d0da5d0e6f38`  
		Last Modified: Thu, 12 Jan 2023 03:48:06 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be5d5df8cec6d1386f78a342668c3d2cb809372865459c1b35aa8d5a39a463b`  
		Last Modified: Thu, 12 Jan 2023 03:48:06 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e467d553c4972b55bf8e3d80b16f245e5bb38f28d80b91ca4f9f90c09a6c28d`  
		Last Modified: Thu, 12 Jan 2023 03:48:05 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97054b77b205167acd5a303c8aa82e380f090ff4e2ded81d3425ec78500139d`  
		Last Modified: Thu, 12 Jan 2023 03:48:14 GMT  
		Size: 25.5 MB (25470784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150d9e1a1da09e17313cb3b6358d2f16cf2919c51e9addf30500de9d03292ef`  
		Last Modified: Thu, 12 Jan 2023 03:48:03 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c0d792e2a7942826a61fdc26b6081ab404122751ff4f4dd8f5b8b0eca21399`  
		Last Modified: Thu, 12 Jan 2023 03:48:03 GMT  
		Size: 324.5 KB (324466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cdd2ff60bbafbd62e677e0798ee562e3c4b291b841c6d0904ca080220e132a`  
		Last Modified: Thu, 12 Jan 2023 03:52:14 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17e6f8c13d649cbaec88dcdd4b1de7b004cf19227fbb4f923bd031b6b57988f`  
		Last Modified: Thu, 12 Jan 2023 03:53:12 GMT  
		Size: 157.7 MB (157659743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29fbb32977b62254a5de7ced98fe2a21e0342aa9db7b3cf32be4013d96b2cd9`  
		Last Modified: Thu, 12 Jan 2023 03:52:14 GMT  
		Size: 1.6 KB (1563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
