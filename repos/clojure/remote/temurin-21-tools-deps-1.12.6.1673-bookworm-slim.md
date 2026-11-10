## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:71e76c7861e33a843f86d03935f20c6ee878593787207ee3ec2a6647df7a2f22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:36bf193bc33e9cd5b3d7341af9675131e2fe0b78339d91f86d628465e7af3607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253166751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30275a808f0599bda9d66810983a34823a418764c1b86eb771774b643faa8637`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:41:35 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:41:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:41:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057e7f75f4ae161a5f7b074bc66c8b19b55c7376d192b563e36a8802b32504d7`  
		Last Modified: Tue, 10 Nov 2026 00:42:14 GMT  
		Size: 158.4 MB (158409430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c3b92f1bfdcbf4cb394946aeeb0ea2fae6dd8bf72bc378030c7389df261ff6`  
		Last Modified: Tue, 10 Nov 2026 00:42:13 GMT  
		Size: 66.5 MB (66507792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228993c5bee2f234a6d342cbe5eafba622d6ffcc4d8d316d5961b85036b9f99c`  
		Last Modified: Tue, 10 Nov 2026 00:42:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c2d887f7b41d0e803706ed53624ea4c76b3008e87a46ad8ad436c9e8afb63b`  
		Last Modified: Tue, 10 Nov 2026 00:42:10 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4b52893c3bf2e00f898bc3ee4a4348ae353ccb03115709e37acd8698fb15a207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b408dcdfb96d1fdabf581e49b0c86eb75c0233e62e8107c75131d6f8c344f`

```dockerfile
```

-	Layers:
	-	`sha256:cdc89b9929724067f1a99956177fbeaba2f696f82630928c66c73e8693a3c8f3`  
		Last Modified: Tue, 10 Nov 2026 00:42:11 GMT  
		Size: 5.1 MB (5119957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39ce2921987414f70653251216e7032d2d46c7d0b726aec73ae5d2e98c3e18ed`  
		Last Modified: Tue, 10 Nov 2026 00:42:10 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:18befbff63c2cb83b0bd2920c4b6270313033ef4ce6e776529aac8293ab5be1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251338036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9acfd5ba4b320eb5588f08fbd6866b6d2ad83f9b62d14115b5fc425701f1b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:40:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:40:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:40:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:40:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:40:24 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:40:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:40:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:40:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:40:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:40:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0332ae19c437202ec487310eb4b040747e93b9bf7459764ae0a3b9958c7652`  
		Last Modified: Tue, 10 Nov 2026 00:41:02 GMT  
		Size: 156.7 MB (156691637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489470237a902eb2925c010c3bbe94d266c0f09076d9897d6ab10cd8f56fa381`  
		Last Modified: Tue, 10 Nov 2026 00:41:00 GMT  
		Size: 66.5 MB (66500492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b7a251d20c2811403278984258a524ab28a9ee515f8f4c3a5c8ae16aaab6df`  
		Last Modified: Tue, 10 Nov 2026 00:40:57 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63efe2de383c577585f0b7e0d25bbe713dad08c5d968c81511d3b35fcf000015`  
		Last Modified: Tue, 10 Nov 2026 00:40:57 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37e3f9d01ce462e4a739928271ffa89a3de24c9471fa0bbe1c965565a5ed0cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4785b4158e5492869f5b47a2efc77c0a1abec2f3cde5eb5d10cdde866aa170`

```dockerfile
```

-	Layers:
	-	`sha256:479fa501abac1a4bc3fc0fdcc98b35f7cba82b21a875dc6d9a2a99a8fc82703a`  
		Last Modified: Tue, 10 Nov 2026 00:40:58 GMT  
		Size: 5.1 MB (5125718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed094a882c4e193ea48dca164f6f462862cf8dc266930c305cd2ba5962ecb889`  
		Last Modified: Tue, 10 Nov 2026 00:40:57 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6a0c3330fc7fff872c77f21464e24621d8b42fc7280b5befeacf3601e54cfa19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262002067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c2fed295d71569b4b2e753a61ce0bd69798413d7d9b59287a2a9d539d5e07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:49:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:49:08 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:58:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:58:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:41:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:41:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:41:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ab57e54146656986c1b7733b67f6124d946328177a69a693d4f11a2f0950d`  
		Last Modified: Thu, 05 Nov 2026 15:53:06 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff506ef2702f192437fbaa577e7a1aeae958306ad89a046f8d92eafd8f47b31`  
		Last Modified: Thu, 05 Nov 2026 15:59:33 GMT  
		Size: 72.3 MB (72333727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045d35e0b2c6588f9dd2afa2df47e597f16ba93a680f39f58cecebcb24b9c5f0`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100d72b125af53135d80078ec7786edf01746f3ccea49d0cfa7eaca3673b4153`  
		Last Modified: Tue, 10 Nov 2026 02:41:25 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8ea86460c98aabcb613411db3b798842dacfb156803d3a82960d72427b81b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137281b67be1703c8590a4d65d543cf531192e114db173ba34164083abd93f85`

```dockerfile
```

-	Layers:
	-	`sha256:979fb341b193b5ca054ad967ca28cd69a9ed47f1d4bff249e57eb34f47b57ce2`  
		Last Modified: Tue, 10 Nov 2026 02:41:26 GMT  
		Size: 5.1 MB (5123869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:471275bde62c15f0fff429ef3161acc3de0c0b78a5018d2a08909422d10b3fe8`  
		Last Modified: Tue, 10 Nov 2026 02:41:25 GMT  
		Size: 15.1 KB (15083 bytes)  
		MIME: application/vnd.in-toto+json
