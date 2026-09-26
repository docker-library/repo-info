## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:d2ee26ec4a5661a0dba54ba4812446ea4de882e7c371dc52543e87a2c7bf054c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2aa6ff9e428f717d57d554d36db83d5d6c39f57b0358587414ae603c2005d178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290065020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b610972837b4e4027507db266c57b6159cb2a1b5587da3f3b23022dd3de23ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:23:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:52 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:24:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb7db9117e5a7392fdbc0a29a3c49a90869ebe7c847f20e74b5352e63d2ff31`  
		Last Modified: Fri, 25 Sep 2026 23:24:30 GMT  
		Size: 158.1 MB (158117497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac6e6184b5a0ffa5e5d97d83217a6d7938311a1a71507a5a6cf3a316b11c3ec`  
		Last Modified: Fri, 25 Sep 2026 23:24:29 GMT  
		Size: 82.6 MB (82566787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f075632b2e88bd4a860519eaa4f2d0ae1312f4360b84e26401257f6c2da0c46`  
		Last Modified: Fri, 25 Sep 2026 23:24:25 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18aa9aaa95fe3f72e3cc26a933324dd37bbf346cfc5cdc48606f2e16574a6a`  
		Last Modified: Fri, 25 Sep 2026 23:24:25 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fe01fbae8cb8ede6d667381300aa98003dd020066f0f2167d2877f6974453c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979f8fd42fb52045bda1840a5d4cd767ee56fcc86753b664cf01d577fbaa1e25`

```dockerfile
```

-	Layers:
	-	`sha256:80f11b411a980138d8f2e6664cf1c218edfb5b5b8dbdbf6eb273492dd27559fd`  
		Last Modified: Fri, 25 Sep 2026 23:24:26 GMT  
		Size: 7.5 MB (7480672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c96eaea13bb8468e71565c0bf09a6170c4ada71cf41f34ac2c00ee6e8ec67229`  
		Last Modified: Fri, 25 Sep 2026 23:24:25 GMT  
		Size: 15.9 KB (15906 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cdb3f3be6c936660ecf1e753531bc1e64d5a2e6eb0069a4755134d4289042248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288539918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49154cbe47a91513ab85ef385681cc4ea3c37296bdbbe59b186a4e96479587fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:21:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:21:40 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:21:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:59 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096d04317829572bb5c5cd548ddfe23338c34a92a3c2d511afa0baa803936a7a`  
		Last Modified: Fri, 25 Sep 2026 23:22:24 GMT  
		Size: 156.4 MB (156400664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18a597adac3ec6c95f6585ca9c72bbaa16ef8af2d095b37f5d60b9c531b38f9`  
		Last Modified: Fri, 25 Sep 2026 23:22:23 GMT  
		Size: 82.4 MB (82389376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc97d2fdd4ae7ad327512fbb61c6399cb69317f3960e6ac05909319f25281079`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db88212ffaa81582c83c55e3fdbcc82d0487c9ed71bd6fb834d5b082fef69b6b`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a80882171c2e5c5ce39189589cf01a87564ee732128858a6a164c68f0efecfde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2575a6d684ae9eb2a86183506b33a89e46804a926064c4bcb3b624be3c43332a`

```dockerfile
```

-	Layers:
	-	`sha256:17be4400a135a86fb5805a694596472092d43dae13be8dd97a93e172c6175ab2`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 7.5 MB (7487065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:749fccc6e3a3dc8b6c0aed256f555f579a05a48e7f76d4fddfb85833bd52461e`  
		Last Modified: Fri, 25 Sep 2026 23:22:20 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9856f33bc6844cbf75e75c14742d8ffe813b8d88cfcd01057a1975646b9b87ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299469275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1a5fe4fc3060e6db2d73d08bb2bf5503dfacb5e8acf467c4efe6ff9196ed2d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:02:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:02:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:02:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:02:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:02:41 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:15:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:15:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672bd588ed5276723506f7ce06a15138fe6d091a5d202c2fdabae87bc5d56532`  
		Last Modified: Sat, 26 Sep 2026 05:05:55 GMT  
		Size: 158.3 MB (158282679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af60b8692a3d6e324f61b80631868b99d269e3e82a7ce50c613ffb2b7c7d3cc`  
		Last Modified: Sat, 26 Sep 2026 05:16:09 GMT  
		Size: 88.0 MB (87990477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcc5b7176962b5a19f8c0d1ad88ccdaa40ff4e7032df65368c79849fef9ba85`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0f5ec389f9d0283663dc934587223870038d5383a1f7453f6830d15cdc5c36`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1212f868d3aa5aea0aaaa58850dc500f98a2f204fa1846d12174e81c0c8ceb0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d053377808495b7a8efb95eed1f2d630da2c5e43cf15be920b9ff546da641c`

```dockerfile
```

-	Layers:
	-	`sha256:3954be21debfb1a791dfff6d4fb49744c576b73e738e89aa52116dc5a9fb210f`  
		Last Modified: Sat, 26 Sep 2026 05:16:07 GMT  
		Size: 7.5 MB (7485091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83fa0967bf37730f5305894156b455b2a0880ff0f7ee2caba80b81e60dd8e97`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
