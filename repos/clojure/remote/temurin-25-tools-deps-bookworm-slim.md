## `clojure:temurin-25-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:639080b8e26d3e266ba431b3d22a3e974ee804441c21549e76e8d2300c67d1b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2a5e09bf1634e9d711b60e391cc746cb42e7d2a987e30046193c8693038adcc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187465430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04fa37d2e6ac0bbea238eac3691b7f6113037632e9f3ce851dbe6b12fd49b7e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:55 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:54:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:54:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc681a2ceefcddce708e2d2edfee02e0c29306c9de633d2a7733786aa3d8ee5`  
		Last Modified: Tue, 04 Aug 2026 02:54:29 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b393597a2f1f235819232ce81e6cdf6b66e9dcff138462c34dc6257b64cc3df`  
		Last Modified: Tue, 04 Aug 2026 02:54:28 GMT  
		Size: 66.7 MB (66657183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67779221a28a07c13156685e985341926bb3aebf017ba6a438a7b0d9c7e043d0`  
		Last Modified: Tue, 04 Aug 2026 02:54:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66ccf6c1df4a82c7ac59cd65db68324eb87fe561daa43a78e367a6cae94ccfd`  
		Last Modified: Tue, 04 Aug 2026 02:54:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dd23b09cb00e2c1b023bd51d32af6e4555269fa636c7def5719ea54f1fe2ad50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1701a6f0bc600cb357ee93752eecb200a8b016ec3b9e2753a48c1ab41a6331`

```dockerfile
```

-	Layers:
	-	`sha256:1794ba0acb72ce4a6aa9fb2b016fc6f146516a9da870e67c873c5168fbe1bd83`  
		Last Modified: Tue, 04 Aug 2026 02:54:25 GMT  
		Size: 5.1 MB (5082125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9463c0bdc6ecffd72917e1b4eeb59413378a1ffb9c7df9e9bfbbcf815f4ae41`  
		Last Modified: Tue, 04 Aug 2026 02:54:25 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4daefb9f8cc0af59cec85b3c4399539d1b49f9a6832265b4b5e02f3a3a0ceac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186309112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823ee99b2c223112087ee54d254e1e4a4e6b659849773e5e4e3d232da107c38f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:54:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:21 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951459f4aeacaa910c897f321ca4c806a63aebb9d9c7b61ff007828adb4fe840`  
		Last Modified: Tue, 04 Aug 2026 02:55:28 GMT  
		Size: 91.5 MB (91542252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7d4cc88cb5a808c4f37188317b7641bd3cc2f320ca4c0702fb6ce334f84840`  
		Last Modified: Tue, 04 Aug 2026 02:55:28 GMT  
		Size: 66.6 MB (66648562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475632bd51181fd66b2e0840c93138a2e2355c8d7b7e33b520718c40a4ea2d0d`  
		Last Modified: Tue, 04 Aug 2026 02:55:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b0286a6a8640842b1b2fb3b8c62cae5a179a734c62b0a649cdf7babf92c5e3`  
		Last Modified: Tue, 04 Aug 2026 02:55:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cc8523ffe7ca1541ae7009ccf8318112b6cfd02ccc2a3302a48e623b31a7398b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8042e2f58f27ba8e412600b83c9aeb96fc7d2f6b4b9068332011816dd9b65a5e`

```dockerfile
```

-	Layers:
	-	`sha256:d7964caa966c95be69ff432afd41e2e8ebf5ad22ad1d39c74dc305613993232e`  
		Last Modified: Tue, 04 Aug 2026 02:55:25 GMT  
		Size: 5.1 MB (5087907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0186646165bfcf6e3057bf9ac9a10c96aff3eab200ef39d593da87662733adb`  
		Last Modified: Tue, 04 Aug 2026 02:55:25 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:473e900ae0a271bcdf94d6569d437c8316cf6e083cc8e402b01a086d51b3a13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196478138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad317264aee0706fe7d9db32a67bb432bf5aa6348d924e35656a0f233f37f5ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:12:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:12:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:12:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:12:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:12:09 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:12:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:12:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176965d2f6912cb947d8e48e35424bda1591ae4eff9fc8aece9741589af0c8bc`  
		Last Modified: Wed, 29 Jul 2026 18:13:37 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f60c676a817ecef009795b62f364f20b3fcca321a0003ddae635d64b2adf246`  
		Last Modified: Wed, 29 Jul 2026 18:13:37 GMT  
		Size: 72.5 MB (72486641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678a93fcf8a72cd1d11a4c19d848e97a92c4253835ff3876d678e396632f7144`  
		Last Modified: Wed, 29 Jul 2026 18:13:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01009bcc5614be1fdc744d9aff9261559a734051c3381e9d3ea26dfaf9f0c0e8`  
		Last Modified: Wed, 29 Jul 2026 18:13:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:89e0122b16b782e4d05f7a3c6b43c2d4dda161bc69f894a512b2ffd9a45e001c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005fd91f6721dc91c55123233f49d99c573d4120e93a52eeb00c048ab1686393`

```dockerfile
```

-	Layers:
	-	`sha256:f3bb402c8add4071b87b675c34abc8505d73825acb5728babedfdb71c02af1ff`  
		Last Modified: Wed, 29 Jul 2026 18:13:34 GMT  
		Size: 5.1 MB (5070607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f74cb1d760615116fd839aace44d544c5b2463596580c67f43a4cbdc26df51d`  
		Last Modified: Wed, 29 Jul 2026 18:13:33 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:fefef883c319bcea834d97a3254b42a2ed47b30ee16486d7c85c0da62d5628e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180765774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca5a45c79cc8f6438b22fe0e2949d727dc0b108c60f1c8d1b33189afe579d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae887b3377496cf8347ebe3ea7043d707b2d02a42da560c3468fe435168a5e57`  
		Last Modified: Tue, 04 Aug 2026 03:04:09 GMT  
		Size: 65.5 MB (65456095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:be7274fc478dd4d67b63063c5f3ba8a43eca546310032d40ddda305dc55d515b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5073733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135423de29d4e454056f9acafa30066c4d3242f18daa5799bef8a96cb7d132c0`

```dockerfile
```

-	Layers:
	-	`sha256:cc0454890b114b4c8c45035c569655d77c9dffef532a4c2e36df05e9cc7f565f`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 5.1 MB (5058008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed2efaca382e53971b541e49e9fdc3948b80f2394d6bc751cd1395a7512f527`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 15.7 KB (15725 bytes)  
		MIME: application/vnd.in-toto+json
