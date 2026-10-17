## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:200e3767cf999dc82d119d1783028501955d2944343624042fd4339e6342c38d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b1bfea399a25b4185f91191e9dd44e5c49900d69735859addef165a663fbb949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187163078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5003e22204739c7375c68f035ba13edcc8a298307e3e9c6de0c5e516f5eca3c4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:15 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593ec3fd9d4d797dbc5f45239ed39f540697fc1fde48a81a3d6b5df05e270ba8`  
		Last Modified: Sat, 17 Oct 2026 01:46:53 GMT  
		Size: 55.2 MB (55192278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e617fc86903e64c5e5ef5cb1d44ceb0c27d86c8671c0fd95457d6709a621f539`  
		Last Modified: Sat, 17 Oct 2026 01:46:53 GMT  
		Size: 82.6 MB (82576954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b1dddec542b673209f1f0a1cb6135118b3bf3890d537c6a1f8c6dea57d874b`  
		Last Modified: Sat, 17 Oct 2026 01:46:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ffd225a642807d7ac4dd8b83a237c0df910c1148022491f012760ccd1001046b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec168771d1d58bd28b56afaf2538c1110293251f39a7e382e245b679386fccb`

```dockerfile
```

-	Layers:
	-	`sha256:ce5d7a51461742ff37a04adf66ed92303564d1f3b6724ace05e99a17e5ba89b8`  
		Last Modified: Sat, 17 Oct 2026 01:46:51 GMT  
		Size: 7.6 MB (7599174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9956bee15e13800d91bb090c8013ddbc8cc45be7ab3b6df6e67d19bc5fec2b64`  
		Last Modified: Sat, 17 Oct 2026 01:46:50 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0df69c9ad8a0ce70b7942d4ffe827bcd1a8cf37d136dc2727a8f6767cfd849d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186412125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd83d1683122e5892eed587ef73b8d6914b3e9610646e446d1fd579405cea34b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:46:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:28 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2824364bd63e837299523041ae87fbf52033a0ce1aebd0af2037ac244a4931`  
		Last Modified: Sat, 17 Oct 2026 01:47:09 GMT  
		Size: 54.3 MB (54254297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23093a53933f3792010c606e5cfb53d580114fd69bf0e429bab5745b0527336d`  
		Last Modified: Sat, 17 Oct 2026 01:47:09 GMT  
		Size: 82.4 MB (82396079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239a735aec1c95a6f604d388d0ab6fb7d863b42310cccc4f6dd618a1f1c190cf`  
		Last Modified: Sat, 17 Oct 2026 01:47:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:995828a8a0b6c8221acfe02c452d381e1d454afde284c9c4f3f5dc94ea448ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283e48bf39f33940bced991a79a335000c0f73e75fb7c3e64cb277ac9b8d6c36`

```dockerfile
```

-	Layers:
	-	`sha256:e234ae962d5eff0d6571365694bd83de704f1e14d907dd91d1c7c28a3ca1fa1f`  
		Last Modified: Sat, 17 Oct 2026 01:47:07 GMT  
		Size: 7.6 MB (7606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7056d3a62d13fa576a3291de50e595ecc30a0b55642400227f2f8cba87caa6ee`  
		Last Modified: Sat, 17 Oct 2026 01:47:06 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f6a584f9decb7344ccda2d8aa9d2fff0dca0f3222184f8efb12f8c61356959fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193870350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2204d4562e2e0124f46e47c0889b66097ce94d77ade19e6403d1032d4c3a14b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:12:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:12:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:12:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:12:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:12:01 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:13:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:13:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:13:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6866805c609e8ae97e3c97a4964bdd909516fd2fb578a0bee6a1112cbb4dc8b4`  
		Last Modified: Sat, 17 Oct 2026 05:13:51 GMT  
		Size: 52.7 MB (52667093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c4a3b177e73ba1e999e5b7437ba6fde5a3572b9d58ebcb3b5ff170a33c16ed`  
		Last Modified: Sat, 17 Oct 2026 05:13:52 GMT  
		Size: 88.0 MB (87995486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0025d170b80554d91488e26ae64d5f53d80c1b265cfcda1dbc7cdc270660b774`  
		Last Modified: Sat, 17 Oct 2026 05:13:49 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c0e782fcbdf2852ceb5415bb20fad678a33481ebc476b70b2788c70d74bf88b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a808c68483907fae1c805f05430c20f5447975a8f753fe43ffed65263e6aa75`

```dockerfile
```

-	Layers:
	-	`sha256:7509361f36c49cbea2d0d914260c26d7bc9dc2a17473dbf6588130024275899f`  
		Last Modified: Sat, 17 Oct 2026 05:13:49 GMT  
		Size: 7.6 MB (7604188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05b3ff8113e247b4e4535d2140183deb3ca6bd0370caf626a3f95a5bbdd1e71d`  
		Last Modified: Sat, 17 Oct 2026 05:13:49 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
