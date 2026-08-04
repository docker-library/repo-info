## `clojure:temurin-17-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:cda537726a9cb6fdf6df661790502021c8a9c5ea247f4575c6dff48f97ab96c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b72524d120701a723dc04457477e5088e40d2e0b0837eab76df7a407fa83ea01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232272241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f87676eb2e16dbd0beb269131e664fc577a8d79adc762028d4f031451712a2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:50:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:50 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8afe419b9017ba8a2fd067e83a59034e3f22e6c69023dc257c6c8ba0d361a89`  
		Last Modified: Tue, 04 Aug 2026 02:51:22 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b286d79d29f2612bc544bbc3e7c8050d8c1c7cd97dacb6e450fb6b0b89e91066`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 56.1 MB (56106008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96236875f63a6fb1528546a6919993b75dbea4ff575cc2de650126e01731379b`  
		Last Modified: Tue, 04 Aug 2026 02:51:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4477e7f46227c280167f8db2fc2e69550acb6d4dc1aa0ee6b701edbbb801c0`  
		Last Modified: Tue, 04 Aug 2026 02:51:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bff11d110be595e6139cafde592efc9c720fef53da21313a61bcef179440f440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1370f48649b16c6e1165b50759358fc56255826c0b6620e61c15981368ba0640`

```dockerfile
```

-	Layers:
	-	`sha256:acb330a0d366c3918a07b06b2e5f8bf1f7ce235ad1ff636644dc82c4580a18a4`  
		Last Modified: Tue, 04 Aug 2026 02:51:19 GMT  
		Size: 5.3 MB (5317849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:befd604f517d412212806254be1e867fa1e866f5ae5d50abf6f63b8366dfc92e`  
		Last Modified: Tue, 04 Aug 2026 02:51:18 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a04dfabce7063b53be4019428f1308b0572beade857d029e567159524bd5899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229749864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c6f15f5fdc9f7eed0b1e860d8e7837f9bd0ac3ae9cbf2f0d48fcd99362b6af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:51:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee006d951894c888183e481a31af82dfc3330e731c32968b7971959511ed635`  
		Last Modified: Tue, 04 Aug 2026 02:51:42 GMT  
		Size: 144.7 MB (144724309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18d24f7c375e4c18039b6288399ca565867246356c5a5dda115973d6771c9bb`  
		Last Modified: Tue, 04 Aug 2026 02:51:40 GMT  
		Size: 56.3 MB (56275531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85154ec8a0ec5996158d9f50caaac482c44faf864c5c43b29cc486b9d06f2b88`  
		Last Modified: Tue, 04 Aug 2026 02:51:38 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b8ec823321af36de5c39909b5712265e23fced643a795e7cce0375bb3e7d5b`  
		Last Modified: Tue, 04 Aug 2026 02:51:38 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:10c1b444da778ab5ec8a29f177225d93098b7d77a0549d5a8bbf866ced1fec3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239cbeaa3e028a8baed63124e8a6e889bafb5dc9265531e27cb59e57b28402fa`

```dockerfile
```

-	Layers:
	-	`sha256:26f64233e8d75bc87675d65d31135b589e521da827331db56389357e257ba33d`  
		Last Modified: Tue, 04 Aug 2026 02:51:38 GMT  
		Size: 5.3 MB (5323581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e51ac2a01f0a7c3b5b682642d339efb8a2168476160ff3299f42f3b6fd38186a`  
		Last Modified: Tue, 04 Aug 2026 02:51:38 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json
