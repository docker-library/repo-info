## `clojure:temurin-27-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:49584154eb2a909782c16c2e6fe6a209b073433e4c55ebf41161f6c77f61e108
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:146fd6949bedcc0033f82cbc99af1f206387671d96565d52a2a5c62db53630f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220174390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9560fbd67c54629bc4375cc02a478458c2362f7a2ae3e2bf7173cdb9c3854f67`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:52:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:52:42 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:52:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:52:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:52:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:52:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:52:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c810de54d473afb9fd5321210c67dc783e8ad539146ca927aedb31fcf3adb61`  
		Last Modified: Thu, 12 Nov 2026 00:53:22 GMT  
		Size: 93.6 MB (93647850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca0938b8ea5ea997da3c6817292aac785c5631a539db63af44dd61a934ef5c6`  
		Last Modified: Thu, 12 Nov 2026 00:53:21 GMT  
		Size: 78.0 MB (77998514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdb8f55e014470681c98c2d0f1fb4055ae8559870585fb219f920f4856070a0f`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b97f2874be727585ffd3125fb7e89eefc8c48b02abaa1fed3f99cdee058e04`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:f9d8cf8689d5dff9c7926098643d0e93edefc6b2f6fae5d385ce0d01303e5d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:532da2ca7be48b0e5c9227e9689a049e5a8e8243e2398e8710e829b631d6880b`

```dockerfile
```

-	Layers:
	-	`sha256:8dce4f456b14226f7b0c5e394b97bda7f53b20cf66a0f5d2294ad67d2a14f4e7`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 7.3 MB (7342979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92fa72bd16de78073742df0b4f7822b42ce07bd93b9f051eaeddd491e68613cd`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:902928d177b61c348641fb19612fd8bcb22bc7071da0ce17bf6c7afd1667e91c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219073090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b323787d1be6c27a9b691eb2b9f73f8b56ce5e86243a4fc455b35213ae6624`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:08:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:08:15 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:08:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:08:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487243787b3a7f9b97ba0b175618a4cf9a1e97730c2b0ee4774db1aaaf5ab9e7`  
		Last Modified: Thu, 12 Nov 2026 01:09:08 GMT  
		Size: 92.7 MB (92660455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1249e61258a51ce753ab417f9cf9ff0a88c83b916b4e689637ee051654c7c69e`  
		Last Modified: Thu, 12 Nov 2026 01:09:06 GMT  
		Size: 78.0 MB (77998635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aad2e8e8e2c8443287c62c8e507a79b334f53981da889173ac315d9fb294453`  
		Last Modified: Thu, 12 Nov 2026 01:08:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca69d7f0008209a0fbcc62bcd2475248004eed6c15eafcfb2c46987076c8325f`  
		Last Modified: Thu, 12 Nov 2026 01:08:51 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:5ff9fbe961cb9553f9dbb070c7df8e26295ab5aab6c98dc4439fb0bdb62a78b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a9e04e97718160d1d9640cac9584b77854033cc311a12c7208e576324c22d`

```dockerfile
```

-	Layers:
	-	`sha256:e0c5b4d537671dfe0115b278ed04b8324b0e100c7aedf27b366bde684dd92790`  
		Last Modified: Thu, 12 Nov 2026 01:08:52 GMT  
		Size: 7.3 MB (7348763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0eda8bd5f7755763066a75bbbee0f501dfb4198bd167d33002621b0597267c2`  
		Last Modified: Thu, 12 Nov 2026 01:08:51 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:6b922719e2dc687993e4a2bb6931bf48c725946e48567bebe6b062a7b588b7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228119836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40bc20eef76ef3efe4dd73b555c57612df23ac5b6f3c25c0ab9bd2b6b19e433`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:52:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:07:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:07:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:07:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:07:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:07:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e75d38b2fe5bbc4bc23e1222e27c678405808c109729123654e27aa51a377`  
		Last Modified: Tue, 10 Nov 2026 02:57:13 GMT  
		Size: 91.9 MB (91925710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e1ea8f43b74033600649293e5622e0a2226985c1f4aad07966680d540169e6`  
		Last Modified: Tue, 10 Nov 2026 03:08:10 GMT  
		Size: 83.8 MB (83823961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613033bd4dfc4999a11bf7236233c1354996286c1d6b00fed3d247ee00b279d3`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77684d1a569d0a7e452028553813904e72ff7d0f61cead6aecf1a47aa665fec4`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:b053d9dc6bfb5efd4c8b99251aabc8fba17c0183ef89676117874c5a88ccbddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7346947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447030ce9b3f2ecaea6d1a1789809d73e09ad78e430423e4b9fcc95e076854b2`

```dockerfile
```

-	Layers:
	-	`sha256:c0066581acabe668f80f4b4d78bd64370df2d59671e93447a4314544a14d8e36`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 7.3 MB (7330278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45577aa766cfffde9170d39bcadab7746db812c90e39f00159211e84bbf10d23`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
