## `clojure:temurin-21-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:0043e7c41d1883bd76c13c684839dec145ce55f00c156d3764b9e9ec731881e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c9faef90a1126ea9cead0dc674f3c96ca754a2c716da5420c46e4c96ebbd06d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290394436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ae5e7cf6edec982aafd11a93d4496154684eb77f04b459370a902a83fe675`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:34 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:34 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52b5989d49298578000d1fb7c97f8df0f6e21409ee989ead4e7b2cc9ba7c6a8`  
		Last Modified: Thu, 19 Nov 2026 22:09:14 GMT  
		Size: 158.4 MB (158409413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb5e2fb002c7143c83ed320faa0f7870f1f8fd0be8c1164683b70994e749fc9`  
		Last Modified: Thu, 19 Nov 2026 22:09:13 GMT  
		Size: 82.6 MB (82570969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7d30cacca249d5bc2bc7f0bd27271a9bd6e662e9cffa4d5279642eeed89343`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4b34ac9afa249f0ebffd7896476896fe9b388d603a5493314131b316c589df`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:87eba501e24c83fd9384f6a103a0638382de99291f13fab1e846bc7355b85e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0042065208fa5df64f7c439a021af662c19a4a6fd6f13517fe0c261704c0c34`

```dockerfile
```

-	Layers:
	-	`sha256:c46bb6285116728d93cb9e4f020b53499c3118ee789268a4ac25c2039239acee`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 7.5 MB (7478613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7046bf154e80564c3a31763bb1668dd9a40f9601e65f9fe6d950fd04d6f0f162`  
		Last Modified: Thu, 19 Nov 2026 22:09:10 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:35ba0775b5d85354e36a00eeae173316cf3904bfb6f889506ad4467200fa6a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288865417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1550f42c41cadca8665a955e97a75df3d9f22b86e182c4952d79eabfdc40e35d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:12 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab35163776a5446b68f1a530ca8379a0414e0c841d3dd098a5e85627146a5821`  
		Last Modified: Thu, 19 Nov 2026 22:08:53 GMT  
		Size: 156.7 MB (156691654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57cef349281559cb8cbf034e41c92ef16aef040ff347205eb06b5be821f7116`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 82.4 MB (82393611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3838c428c4d60d862104497b51e636ad9cc8c5a270a2c0ba397505b8fe2e26`  
		Last Modified: Thu, 19 Nov 2026 22:08:49 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9aa41e3d568e8926ff41a8acc2e0b2316bffa93b4a90e08631d00302665d958`  
		Last Modified: Thu, 19 Nov 2026 22:08:49 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:65d243dbe006c8a6e30718b72cd755a9a413aca538cf258c7b24a86dbce0d81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdffa9faadd544810526a1daaf6accbb586ba3c2aa4b0ba560c51ea65d9d0eec`

```dockerfile
```

-	Layers:
	-	`sha256:72afdfd26dc430ac0c6610578bb5d35cf5a6f328bc7b6caab9619e413a734f91`  
		Last Modified: Thu, 19 Nov 2026 22:08:49 GMT  
		Size: 7.5 MB (7485006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62789fb9bdae172c2e4812778aa5279fda1d28ea9af51935ca156497690950f1`  
		Last Modified: Thu, 19 Nov 2026 22:08:48 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json
