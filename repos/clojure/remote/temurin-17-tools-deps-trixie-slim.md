## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:66c5135480a5d10feb01a5f706513e83781f2ddc7bcd8793fd3f3618092bd658
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4721769a2a425e2995154227541e85eba57246be0cc011a568e2204958ff8e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247613992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61431fb69fd4824a4e36f79a7ca6f5700fd375368943bd7dac9440f31ce25bb2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:46:25 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:46:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:46:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9748cd8ef2467ec2c83361f4767e8f4efec567d59645db34f46731560daf80`  
		Last Modified: Fri, 02 Oct 2026 02:47:04 GMT  
		Size: 145.8 MB (145825440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a955566c2bd83dc828f47051829e4e282d6784cf4fd7bf718f6b9b08fe7643`  
		Last Modified: Fri, 02 Oct 2026 02:47:03 GMT  
		Size: 72.0 MB (71957089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f97e466ee1c5bd25ab9d99a8a37f6af39111fcde5801bfa81ed6f1806dc389e`  
		Last Modified: Fri, 02 Oct 2026 02:47:00 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0fc18868ef76ec857a250b08a1cbc096aef29eeffe6ede31f7b8c93ae67a89`  
		Last Modified: Fri, 02 Oct 2026 02:46:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7dc09e7ee408c8ad8af671e92365e96bd71cd19ad9596bd63c64dc273d7e2ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2061b6539443dc414686290cf5ddbbf2b391409b4ff4aecfbca93ae5e5a426f`

```dockerfile
```

-	Layers:
	-	`sha256:05947d81c53eec74fc792cc3813d25549a2f619c7f826f48272dce89bb02233e`  
		Last Modified: Fri, 02 Oct 2026 02:47:00 GMT  
		Size: 5.3 MB (5263314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a54fe56c565933a517ce68461cdc3fa78e8cd6a85523c656fdeb514b5d18d171`  
		Last Modified: Fri, 02 Oct 2026 02:46:59 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cc8bb8190e9fa2d0250de2704a561196b2121ed7ea23483b13cb8d45c100378a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246977341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbd231394a4308aaa7b4c5885f75e1909ae8e017c48409fa6f2a9f5ac762955`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:46:15 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:46:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:46:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf46e2fec55ca17884af8bf7f2a8abf7b00488ea0282effca8d117e54b38db5d`  
		Last Modified: Fri, 02 Oct 2026 02:46:55 GMT  
		Size: 144.6 MB (144648224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a571ed0ed8ff59ce3e7e0c8888d18767709f91f30b1f8cbe38bb3b02c918cb70`  
		Last Modified: Fri, 02 Oct 2026 02:46:54 GMT  
		Size: 72.1 MB (72138387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7fff2c40f1474ae8f146333d3590cd27694add3c0838612bd2e5bc0f3b6b01`  
		Last Modified: Fri, 02 Oct 2026 02:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d440d318d0a32da3ae1db4f198830e7ce59ffe29926b3edaaf68d65e7613a88`  
		Last Modified: Fri, 02 Oct 2026 02:46:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ce1fee30e6aef5563632eb7b8b71bbd779e6bd17a33fe0c10a438aec49ba4f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe53cb27c6bbad8ff7c8242d3f073eda0361c1092815edb1d1d03e5a64da853`

```dockerfile
```

-	Layers:
	-	`sha256:d9f5bad3b712d4cdd79249079756c249328dc0e09d4711c552ca4df683dc196c`  
		Last Modified: Fri, 02 Oct 2026 02:46:51 GMT  
		Size: 5.3 MB (5269075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4617f5477fc2b14ff0028df0d6f45c842f3f766446d0b85a4e2996768f597ea`  
		Last Modified: Fri, 02 Oct 2026 02:46:51 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7821bd954808cfb82aa9b452484994e745213f210862bdbd0125fafdab549b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253724577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb7c999bd1883d1ccffdf1c9ad41f11535f2e9b6207883dff11040b4bb53f27`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:39:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:39:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:39:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:39:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:39:12 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:50:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:50:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:50:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:50:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:50:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7c7925796eb84dde8ba10ca1831ea4d072c2ec80278754639f2790ede8d83e`  
		Last Modified: Sat, 26 Sep 2026 04:42:18 GMT  
		Size: 145.7 MB (145670563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4697c968c3d14b5068aa6035e38a06fc7c3e2375ab8f324573d46e0e839cb403`  
		Last Modified: Sat, 26 Sep 2026 04:50:41 GMT  
		Size: 74.4 MB (74411738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d4246b0fd7db24115eea58c94e5f071d8b8a4f5d37383ad4450793b1656477`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa82698e74934bbb4df1e90dae19472b7e22091a2cb354d56a9490e4ab31b18`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4ffa3937269f5040492af21ba0bf4a31d4693c390c8e56b89eea93f7d9c30bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065ea32959289e264a678246f601d1e76707c9a23921513bdb877ee18af5dca7`

```dockerfile
```

-	Layers:
	-	`sha256:472ff6e0bd458174f00ea6bcdb103ef79d3ed6c19de659d07cb5812b0b10b2ff`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 5.3 MB (5267685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4698ce924a8d6c0137035193c9a012092972fcf187705bf250cf0742312f6c89`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
