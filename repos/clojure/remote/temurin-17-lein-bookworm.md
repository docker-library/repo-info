## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:a50c28d3abc32722d5bc181b572b6cc39de7260d6454f2c6dbfbbf66550ff960
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c0876bce479ab5eaab6fa7e7806d924b17fb53744c62c4b91a812b3c282cd56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218969423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe60c8158af2818e166bf6cc856cf5d4521801eb6a4177cdab1a26327dac492`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:46:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:46:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:46:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:46:22 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:46:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:46:22 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:47:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:47:28 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:47:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:47:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:47:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:47:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c5dcc0bf8771bedd7c740472375af9ff320aee762e1298582564a63a47dc00`  
		Last Modified: Wed, 09 Sep 2026 03:47:49 GMT  
		Size: 145.8 MB (145822680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfa2a218e0526e20dd85b9ed6b1bbc3bcf795d53e8526d52d6b382c807c2c61`  
		Last Modified: Wed, 09 Sep 2026 03:47:47 GMT  
		Size: 20.1 MB (20133759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab18791c44fd26dc4b1e91d48c0123d55c82fd0a02d483fa1c70533d486e449`  
		Last Modified: Wed, 09 Sep 2026 03:47:46 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a41b0f25fa7013b40ed4c33d951602083df00fe5ada4553c3edc3cab029239`  
		Last Modified: Wed, 09 Sep 2026 03:47:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2224f4c1697d05c5c9b3b6326a2a36c6b1d0d9530e3f2b5dd7ce132bc980a5a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89cd072a607b26e767eec06535e45e638fca9d00cfeca836afd3ac9faff55569`

```dockerfile
```

-	Layers:
	-	`sha256:22c1e6eafea88b19dba12f0673d284c2092989a12d6922bbe80106a2d8522f48`  
		Last Modified: Wed, 09 Sep 2026 03:47:46 GMT  
		Size: 4.3 MB (4289255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82a3d210ada5e3432c146fdd879fda136d463794ecfae6a8b7ba591edf0d98c8`  
		Last Modified: Wed, 09 Sep 2026 03:47:46 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:84906c81bebc091744b35ffa32558f5778820fa8455d70255bb97f2646d92ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217503721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda913f44fdd270fb467616e55665f953b0cdf1b705305ed0929dd366481bca8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:57:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:57:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:57:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:57:38 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:57:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:57:38 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:58:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:58:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:58:46 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:58:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:58:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:58:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:58:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9445fd57a25af6885de0c2ad911a18754219c3bc4525ecb795f958b28dfe18`  
		Last Modified: Wed, 09 Sep 2026 03:59:08 GMT  
		Size: 144.6 MB (144647514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c6e5c5c5a353ecd371aba659b03900f16f5c37d98242f9b35b0b9d4b242d19`  
		Last Modified: Wed, 09 Sep 2026 03:59:07 GMT  
		Size: 20.0 MB (19956916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8001e36698f2689bd4e753dbdc48778e07083060b8c4f065ce36f7efa0aa2a4c`  
		Last Modified: Wed, 09 Sep 2026 03:59:06 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ffa6a4c40d3a38e081de5af9e4828c480e68c01b7c753d854c977e5f315c95`  
		Last Modified: Wed, 09 Sep 2026 03:59:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c1dda922c67403de1467d43eea3643e8028c70a6ca67f3630c612f49d3189068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e4d581ddd2e40c83e2e531cd2a0925e16ff6c18266e3bc9bf26f2a41537368`

```dockerfile
```

-	Layers:
	-	`sha256:dc215ea7f809f24b2c8d346374efdedbfbbcb63f833b67c85db88d806a0f15e2`  
		Last Modified: Wed, 09 Sep 2026 03:59:06 GMT  
		Size: 4.3 MB (4288870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a8ec95ea4b4ed22698d12fe054aeffe917721d0e0cb8d998d0c9f8f8c6164c6`  
		Last Modified: Wed, 09 Sep 2026 03:59:05 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a61b3d77d70a6f804a36d57f2da10743f4914deb2b6db8ce35e2e261024dbab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222880579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8865c6a1bacb1b3be2d5f5913777ae6afdd8169cbdba78de45a4bb03e5515e8a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:45:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:45:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:45:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:45:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:45:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:45:08 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:49:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:49:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:49:50 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:49:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:49:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 10:49:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 10:49:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c35e23d86d3bca50f128b4e0f925668b13ace02ade6591a1b9c229a9cf1fca0`  
		Last Modified: Wed, 09 Sep 2026 10:50:41 GMT  
		Size: 145.7 MB (145674356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087ee80e68518741bef38553096db040f2c3f5cae9f077bf611481d92913e6eb`  
		Last Modified: Wed, 09 Sep 2026 10:50:38 GMT  
		Size: 20.3 MB (20348819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed15f0c085357a298a7889c719dcba33ea8dcc0b34d48dcb7b9320de9577cebf`  
		Last Modified: Wed, 09 Sep 2026 10:50:37 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d6a80d4b1b54a401a8ba5a3c583c9c96fb2a79ed1e917d12ac9c908b8684d5`  
		Last Modified: Wed, 09 Sep 2026 10:50:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e3fce53c104c500863461fb02e3bd70b106f8169a2be8f342485b4f7c0646b48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53098c0d307fe25eea5cbe212770be7686a01d8e849d575cfd386b12b35435a`

```dockerfile
```

-	Layers:
	-	`sha256:ba044cdfbf491002463bc809b936236f95f8c6fdf3565115e6080d1458f472ff`  
		Last Modified: Wed, 09 Sep 2026 10:50:37 GMT  
		Size: 4.3 MB (4291116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e79447d32887e745300f9c1586a40c72274bb8d54a34137caa0cc9b2395630c5`  
		Last Modified: Wed, 09 Sep 2026 10:50:37 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
