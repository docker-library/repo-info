## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:5e3b7091ec0c6ebaa7fa5eede9e358eb35c6d3acff389d576df10c717ebd793f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:501ab846ac667e4cb5494e42733725a43af5aca7ba1d680b6ccfa51caed12de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209522412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd88c76df8a17b515ee796e0eee09ca92d8544de6f33b4b772a549c2aa5bf60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:09:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:09:43 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:10:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:10:56 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:10:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:10:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce6c0a29456bf387b4ca61a99e41d1d7d4a7ee5e84f023192e550cfb72e5d54`  
		Last Modified: Thu, 05 Nov 2026 08:11:17 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7e5eaea2902afa68f8cabb627231bd8df5c622ec564351b72ba6a8d84cca02`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 16.7 MB (16741218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9595d1c1f9ada867a26e501591899db9ea7049a166997200dc00b7a04f62a958`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0174ea4e2d843725c0e061d0e28789d31e1d38356f9bf25f5a068e7dc6ebf2`  
		Last Modified: Thu, 05 Nov 2026 08:11:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:264afc95d325866ef79794c1c12d4bec5afcce9a440bdc9564629ca6ff5e5a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a31ff0875a5be1c1455ce967b0b56151135f618f3b44c5f7656e78e09f2c201`

```dockerfile
```

-	Layers:
	-	`sha256:fc5a83f4e817fab3940d22f44bd3c690b5669a487218e3d70b28899c219374f2`  
		Last Modified: Thu, 05 Nov 2026 08:11:13 GMT  
		Size: 2.4 MB (2373598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9d99058a88fdfb6d176b12039c7773e34446d007fdf3050eae281454639e798`  
		Last Modified: Thu, 05 Nov 2026 08:11:13 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1104c6bbeb521eff39184b16dacff026238148f97539d7a9248fb34b1145fbea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208128748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c1bb618e0d1680cc82f85d122c677704e6024c400947e72f6e12b1f0d59f445`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:18:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:18:43 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:20:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:20:00 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:20:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:20:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:02 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f3d5c0ca3102fa5af29d3de259bcf159b7e773176b7dcc521e228ded567eef`  
		Last Modified: Thu, 05 Nov 2026 08:20:23 GMT  
		Size: 156.7 MB (156691637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b25b587c54b9ec6d7927ff6ef08104f520fdf1733dc1c0c762892a6b62dbe92`  
		Last Modified: Thu, 05 Nov 2026 08:20:20 GMT  
		Size: 16.7 MB (16707432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2eea6449c3994782b863273a2da256f44b114a0bc9647ee70d23fd14c8dafd`  
		Last Modified: Thu, 05 Nov 2026 08:20:20 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f73836194978882a65e3f7c00d7f97320cf54a131983ef9a2c27f61504ebcfc`  
		Last Modified: Thu, 05 Nov 2026 08:20:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:794d4b5fee4d693537b8c725b4c3897b28510eab5a29cd35a8a754c4f01a0d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea25cd640b3bca85c5ffb1032d8f078279bab00e5183f8a6a0627caae66eeaa1`

```dockerfile
```

-	Layers:
	-	`sha256:2be78edb2c19ebce5a1645b41bc2e21d47a4af41df73fbcbd4216c7cb7064d4f`  
		Last Modified: Thu, 05 Nov 2026 08:20:20 GMT  
		Size: 2.4 MB (2373208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:972c36d6e4b5ea3d924009ab8db6060e3e2768a95709467b5ed132700b5b1c97`  
		Last Modified: Thu, 05 Nov 2026 08:20:19 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:79dc1cb4a42f41308cd4db2a8b81d2114332560a512449bdcf6bfb46db628155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212533584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8303732e2d30d80ccb4dab0403ec5dbd12b7d1782a370ce9a7fce16aa860fd3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:41:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:41:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:41:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:41:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:41:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:41:58 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:45:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:45:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:45:04 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:45:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:45:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:45:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:45:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a38139e42efad6f8d2be360542bdf458c3ae7eb7262d4c847e458af9ff5696`  
		Last Modified: Thu, 29 Oct 2026 19:45:59 GMT  
		Size: 157.6 MB (157573285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342969ab7f1e2f983513134358507111b09fe8a5119b42a63a844b69349eb1d3`  
		Last Modified: Thu, 29 Oct 2026 19:45:55 GMT  
		Size: 16.8 MB (16778387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b84bdd5baae34017936de781ce414e6233be40497d1dc3504c140ff28497cf1`  
		Last Modified: Thu, 29 Oct 2026 19:45:55 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e20119551894610afc37cb81400ec78bbb4de563da79470a9fd67b074b613b0`  
		Last Modified: Thu, 29 Oct 2026 19:45:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b09a96e9f2aaecea5859fb3687d841bfe8f59f9d5d4473266f5dab2b5328751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82d57508892a8db818d2cf7ea6894c13a584d2c06111c8f405a65cb9934b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:07f38de0a6c44599938385bf659ae28bced6abd580dd95794f17c8b8d750eede`  
		Last Modified: Thu, 29 Oct 2026 19:45:54 GMT  
		Size: 2.4 MB (2373332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f97d4498288f848f29a137bc2a43cb516950ba652b5be748a0c7fc0db6979a10`  
		Last Modified: Thu, 29 Oct 2026 19:45:54 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
