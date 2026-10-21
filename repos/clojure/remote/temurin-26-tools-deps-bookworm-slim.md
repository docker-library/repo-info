## `clojure:temurin-26-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:512700275400bbcbd4721c688bf4310854ccd3f3bb0c4892cd159b88150dcc62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:93cfd19c29bedfcc581f626c9f3fc509f6dd6202ac99f590352a270022ccb10c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189306652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865cf23be8f2986a1b9c8bee3ed139775be27979538b75e8a2cfdf01676f3b47`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252f024bd388a7d24b2e70063070f1981d7e04014a3663bc79d553ed56bbbdc6`  
		Last Modified: Wed, 21 Oct 2026 01:21:51 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbc15f170745180344fa7e5078062e3f0fabcd35882577b1393e301d40d61f1`  
		Last Modified: Wed, 21 Oct 2026 01:21:50 GMT  
		Size: 66.5 MB (66494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14115476c29f4afe0b1d0de1b129fe8b636cff72996e4dee84053f078e9d91be`  
		Last Modified: Wed, 21 Oct 2026 01:21:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117c07bbe3111549d205a58104e65425ec72ef95157375ea02c937ce3ca17cbd`  
		Last Modified: Wed, 21 Oct 2026 01:21:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:74b4fcfb0b18ec597793171e696a8887726d7c4cb222bfefd9f70e6212c9dc73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4550728457724dc61107ffd277062541d6ced93336295ecb14adb6c204769e9e`

```dockerfile
```

-	Layers:
	-	`sha256:9e8d6ecc41b4a74d11d532e66706347ebf8a4bd78b705809329a812c1b7f03aa`  
		Last Modified: Wed, 21 Oct 2026 01:21:47 GMT  
		Size: 5.1 MB (5082906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6116073cfffbb4c75ed8ed2f79fa3ff4376333d0315381cc4f953b2fcceae3c`  
		Last Modified: Wed, 21 Oct 2026 01:21:47 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0f35a6cc9a30a8504275291ea7a5cb8e078e0f3a93058fd5c52409be3588933b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188177425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9fba293b0c91fb8bc795e11dd978c37e144a28a742c1b43120015478b3e131`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:27:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:27:41 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:27:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:27:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36408e2aceb8cabb22a92a415fa1d3a496bc78ee28051b6a1a9424f0d3294ce`  
		Last Modified: Wed, 21 Oct 2026 01:28:17 GMT  
		Size: 93.5 MB (93543569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab71638dcc45a252c89515c94e2aa35cb31c33e690de77a7b5123175d5384e7a`  
		Last Modified: Wed, 21 Oct 2026 01:28:16 GMT  
		Size: 66.5 MB (66494386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d390ee759fab025af5796906f5c5ba4a977b89d913e394264a9b4a512fa5095e`  
		Last Modified: Wed, 21 Oct 2026 01:28:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0009cd1edc18ddc1368190c320879dbba22af3889802742a0a78f65979257171`  
		Last Modified: Wed, 21 Oct 2026 01:28:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e92ff9314d8a0b75c5db6a53d246cb1ee2584fbad2f39b22822be5ae11c5a23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e685e3778678b79d3f3fcc6ccd0117cdcb236ce8da2d04cc6583f89cfb6ed4`

```dockerfile
```

-	Layers:
	-	`sha256:952c3f78f5232db7181d2d80fc3cc607493410fd9c00025884af3a19b74ffa97`  
		Last Modified: Wed, 21 Oct 2026 01:28:13 GMT  
		Size: 5.1 MB (5088664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5cec7383b1a5aa88df20f21b43949faf6d346bbb5a3e3fe91c22e8f0fafb11`  
		Last Modified: Wed, 21 Oct 2026 01:28:13 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4e01afd7a8af4ebf065bbe5ab13dc825448d9a4eaa8c638c580c7fff7b156f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200230008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1282c8b0477e1389d5bcc10a5effa6779744cb74c20068d6d75634dd53927ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:35:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:35:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:35:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:49:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:49:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:49:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:49:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:49:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40af87593f1c5a108df58f7ffc4a520346ada86e027c1d6399ef2e273da14e4a`  
		Last Modified: Sat, 17 Oct 2026 06:38:53 GMT  
		Size: 93.4 MB (93350855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43c7c13bda2f92703a551abc2c6ad30380da988d53dd108b724e628aa3520c8`  
		Last Modified: Sat, 17 Oct 2026 06:50:07 GMT  
		Size: 74.8 MB (74785677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4335fc03bae9b24f60a4ee74f612092fe976101b9cbb26d3f1ce1d548d5ac9d`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f143359cdfbe2b794ed18a0a3958d6464af7d038a9931b9519d5ce87afb569`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e45d3f97026cc4d356c42535eee632de8dcbcfbe9bf88063dcbae960eeb98a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed746e3e82fe3fbcdb5af9d268f1b5f391d7b345e159b6670fe6a553271fb73`

```dockerfile
```

-	Layers:
	-	`sha256:c5e619bca8f570516878a45e1f87a49c6648bcfdfc2b101cc31aabf64e558439`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 5.1 MB (5073295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ba4d71f395b82c00230fd8d89d3ee1b3f0a08f0f7a585bfce74df9687cf4ad`  
		Last Modified: Sat, 17 Oct 2026 06:50:05 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
