## `clojure:temurin-26-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:eb6a113a4cdd00280e77d0f13e95eb740e8aa4af85aa4cf0dd4746d163236380
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
$ docker pull clojure@sha256:0f20799cf4e770b56f1cd6eaa227953766ebe6b4b1b9768072c8fa8a37364cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197777758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0628410e2a3e36983b20cbf15f5150b68ed2645e8781088437581752b84425af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:03:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:03:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:03:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:03:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:03:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:13:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:13:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:13:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:13:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:13:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b181dc2a83b940d69077a6cc6b9a90c0ff198e7ef6de7740dd65912334038feb`  
		Last Modified: Wed, 21 Oct 2026 11:07:50 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262a50ebbc2662be714d137cecb637429cb278eae85c6d7013c8251c98c9a0cb`  
		Last Modified: Wed, 21 Oct 2026 11:14:31 GMT  
		Size: 72.3 MB (72332656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a1f5b9aa891a61a4d65c293b6783baf52a22dce0c08a066454f36dd26d25b1`  
		Last Modified: Wed, 21 Oct 2026 11:14:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229a00a901a6c8fa28e135bb79883f155990f7619c70bd1f6dca84dcb13e2de0`  
		Last Modified: Wed, 21 Oct 2026 11:14:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a5dcaaab56689b327b95d62fe7b65a6218ac4f46970aad8c2db6851943032d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5088031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca26ca77b465cd0e1092abc85b4914ae80e7d2042dbcf5da8c698ccf5cae093c`

```dockerfile
```

-	Layers:
	-	`sha256:271acbd75a0c1cb5e6c878cf76d99e46808c2b4238314efb8c9bb73f31b836a4`  
		Last Modified: Wed, 21 Oct 2026 11:14:29 GMT  
		Size: 5.1 MB (5072000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efd3b729cd7eb1662005fc26b8d71be9cc7094bc1887b96f66ed2cb33a17b0cb`  
		Last Modified: Wed, 21 Oct 2026 11:14:28 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
