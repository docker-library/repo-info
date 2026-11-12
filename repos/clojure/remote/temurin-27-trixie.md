## `clojure:temurin-27-trixie`

```console
$ docker pull clojure@sha256:717b1cb39d58d9c8e1f289034b3c130b3aa68221023230b763f269c12caa46dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:86198b032ad7d737f3ef3ab986b0bac8199e75e2b846f204b333dd5679111514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225631585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09022598d0919b0e54fe7524418e0271d0da071da3ea6cdf97f4cfde953e904`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:52:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:52:34 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:52:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:52:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:52:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:52:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:52:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb2f65c556c1930c33fc0c8869d78682fb6da64c193c0714a4b08906d4706a3`  
		Last Modified: Thu, 12 Nov 2026 00:53:13 GMT  
		Size: 93.6 MB (93647885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3f49344ad0989dbbc1b01db2134391e714c70745a7a49826c1e5384e1d0535`  
		Last Modified: Thu, 12 Nov 2026 00:53:12 GMT  
		Size: 82.6 MB (82569647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514306dc5e57ea9863d446a1640ec6780ccec72d1c55383043db209b344b1a2`  
		Last Modified: Thu, 12 Nov 2026 00:53:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3a7633df283d3d488e134840b5cf8dd00c7ecbb0b3f211e92a22b6f820f857`  
		Last Modified: Thu, 12 Nov 2026 00:53:09 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:529ca5e9ca0600ef1d5cf66c3b43d8e3c88e31e4767fa115b2677b6f2659d69a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2789ba473a7c3c96329dcf797f632090ca77196bf72511f3616a18bb6fd3ae02`

```dockerfile
```

-	Layers:
	-	`sha256:5bca4ea651a0a3100f67558fcebe9e0fb8476d1dce49e6d40358df0c08b635b7`  
		Last Modified: Thu, 12 Nov 2026 00:53:09 GMT  
		Size: 7.4 MB (7440421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a122bd4fd527d9ace4a2541f6aea924c9a20ed576a04dba779e635aa71f154c`  
		Last Modified: Thu, 12 Nov 2026 00:53:09 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:569718a6a18916c797270cef0daaf3496fd388dea372e61d0107b9375b4b1645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224833172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33295f1cc9c392b1b7ec6ac9ce83e539aa9389b4fa0d30868c5c80bf5200208b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:08:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:08:39 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:08:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:08:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea4e7e30616ab1da463441fb2dfe73e7b553ae7b84459eb305719d4300db230`  
		Last Modified: Thu, 12 Nov 2026 01:09:20 GMT  
		Size: 92.7 MB (92660455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dce1e6095b29e06d3e36a6dd8eb90deec57f5442c6a385c88347f7d172d43af`  
		Last Modified: Thu, 12 Nov 2026 01:09:20 GMT  
		Size: 82.4 MB (82392571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58925351c1cf2269661ce5439986bded03271846c6b8a6c051f8f659129db48c`  
		Last Modified: Thu, 12 Nov 2026 01:09:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e25f0e1393f999d4628025fc1f8c370e5bc69ddd052e85d87c74e55b69bc9e`  
		Last Modified: Thu, 12 Nov 2026 01:09:16 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1f01af6599961cf71aba8db482c8baa97aa2a3285df3ed4af5e80375cc033b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d291fc12cbc48a578359cf9fb6f1ab10923c5784af384326e042d2e56f62f8`

```dockerfile
```

-	Layers:
	-	`sha256:3f22e69f44f8b61dca611f3cfe41611ca11ec6dfecaa28b4343bc2403b49cce5`  
		Last Modified: Thu, 12 Nov 2026 01:09:17 GMT  
		Size: 7.4 MB (7446811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac20334401382349779d32ec65193b8ac07749998b5dc1846ee8d02196cdcfd`  
		Last Modified: Thu, 12 Nov 2026 01:09:16 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a83458c0aee08e5b65bf9eef804390ae339866ead4d8581a3b9150cc3ba121e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233150112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d93c6c78ba31a4e1ff94861e574ef7286a3285df20b6bc387caf34b9384f3cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:57:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:57:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:57:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:57:55 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:14:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:14:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:14:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:14:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:14:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ae8728f66828010c5601da707c771ad6bf5bcf5f214e92eba88bf7ef5ca6bf`  
		Last Modified: Tue, 10 Nov 2026 03:01:57 GMT  
		Size: 91.9 MB (91925757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab67b36d34d906280f0d26a8a3c04b7108053b6b087e24e2b1b0bef37f747d2`  
		Last Modified: Tue, 10 Nov 2026 03:15:22 GMT  
		Size: 88.0 MB (87997217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386f1f2bd3c23d7f54b44ae9b2d73c99c8d61b43ef82600ead916c48cdf280d3`  
		Last Modified: Tue, 10 Nov 2026 03:15:19 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc60bdd068175a69455a0ca55dd622dde26c5fe7fabad9a2199fe20701172ca`  
		Last Modified: Tue, 10 Nov 2026 03:15:19 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:636cce61c16b4db6037538ad6ca8a30393ab9eaa9dbff0a620d90322097f6c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7442860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a72f04555513000b2b9724aa372173eb89e0286687d7b142442b109cd0c362`

```dockerfile
```

-	Layers:
	-	`sha256:715dd948ca1c68fd5cdaa6175cb803f97161a88e551db3aace984907675071ee`  
		Last Modified: Tue, 10 Nov 2026 03:15:20 GMT  
		Size: 7.4 MB (7426913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de6fce4c295c41d6e0b3c13f20a2cab0c16ea7a08af31afd6e9820ea04e5475`  
		Last Modified: Tue, 10 Nov 2026 03:15:19 GMT  
		Size: 15.9 KB (15947 bytes)  
		MIME: application/vnd.in-toto+json
