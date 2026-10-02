## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:e085e88a3b5fab30023e473f2f510331766536b1b3caa0d46be90d49d2dca555
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:913ca363dbeab7f2eb3dde7bd7dd0e2ba5f3f7de34e903b0112d310e6c69c8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256936036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baa1a91e298174eeb4b5b62ef13f9035df93ea67cb5638a9b19cb090b789dd3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 08:05:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 08:05:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 08:05:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:05:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 08:05:03 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:14:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 08:14:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 08:14:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:14:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:14:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8868ab06d01f323b065e0d63a97290611e51fa6952f13485dcb296d59b39402b`  
		Last Modified: Fri, 02 Oct 2026 08:09:16 GMT  
		Size: 145.7 MB (145671489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9c31343b6bbf51acf03fffe32388ca5d65ff8b214a176a3ef9542978f479c`  
		Last Modified: Fri, 02 Oct 2026 08:14:52 GMT  
		Size: 77.6 MB (77622268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5acb63acda879c038a7c78c9bb09484f1532b1bdfc434da8c6411a25705ce8`  
		Last Modified: Fri, 02 Oct 2026 08:14:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369318230ac95f211ab7c3937572fd77088f6a3d93dc27b0869a1a331dddf95c`  
		Last Modified: Fri, 02 Oct 2026 08:14:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4abb2a6b393858056b16517a6db9724c3d6e461f3a5441985961fc60c336d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db674f0685c3b0bfc8d988e73ad93e0db3a015065f593698e99f8cd0aa7f7a71`

```dockerfile
```

-	Layers:
	-	`sha256:ad60cfd26a0d550a3d02cc9cbdabc4172486ebb4ca5f0a5dfad209cca1a8f869`  
		Last Modified: Fri, 02 Oct 2026 08:14:50 GMT  
		Size: 5.3 MB (5267685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ced15a28f659834d37a6fb515f29cd7189f7a3155b4475a9a7f2f45dd145c1e7`  
		Last Modified: Fri, 02 Oct 2026 08:14:49 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
