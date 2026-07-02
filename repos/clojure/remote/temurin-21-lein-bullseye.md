## `clojure:temurin-21-lein-bullseye`

```console
$ docker pull clojure@sha256:3c7c387b86ffb1ad7acb3ad598d8d8072176d77edc6578d6b6f0b147a977f73f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2c8271355f45ec7bbd8a1de615402566217ed13bb722cc5c97b863f4f428a48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233395104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59184d574b64e0d8d55d3d55d3bae83eed18f52926878b964f2436b739abb5c6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:52:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:15 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:21 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ce6b077944d100131ac4ab63b3aba30b7c8e0be74831d824a1d7db6b1f6b4a`  
		Last Modified: Thu, 02 Jul 2026 05:53:43 GMT  
		Size: 158.2 MB (158166915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c56dfd7b6dd8a52b1bf19d8836ad4dc9cbe8e6f8fc5a2c69663d56877742be0`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 16.9 MB (16939533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6389de6e788c452b0423e326e9ad546aa8783496827be3a5607789e6d74ade`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623bf9a92b4adb1d39a0f509a279ccb34d0605e2254922b704c8bd45787d5a84`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:fb097e8e8db0e417fc2a10963593c3cfc70fbad0ab5a0185fd82ed6debc87c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4f20dc6be78a3f22571a3d31c5d1d932ed76ebc407aa589da35d9dc17c8410`

```dockerfile
```

-	Layers:
	-	`sha256:148094dd16b0c8bb24cbf111f1038749bf0586c6e878613a229b36a21f3dc8c7`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 4.5 MB (4502879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d24ec4a3c956e29d498145a3878c32dc74c7a891c475256d51292c39e6e68b23`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:63fcdcfb7bb7dd21b2e74eb90fc451a6d1b79cd2d96e8a2eaf102e673cff98e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230151865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0326557fbd576e4266388e8343cf91d0c3cef5719090431f8eb3569aad5aeb4d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:52:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:36 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:46 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366688aea88cbba8a59786d933c543b8f8f61b4724795a43de727b464c2021b2`  
		Last Modified: Thu, 02 Jul 2026 05:54:11 GMT  
		Size: 156.5 MB (156461290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60646848e996d5bd54e733a4746db17b140170724b52b4875cef5309c14950ea`  
		Last Modified: Thu, 02 Jul 2026 05:54:08 GMT  
		Size: 16.9 MB (16917760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d361d2275fb491fe947b5c45be9873a8b3bb440048117fb7f70dbb6cc40a84b5`  
		Last Modified: Thu, 02 Jul 2026 05:54:07 GMT  
		Size: 4.5 MB (4515166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2af81512661c871d2fc566d617ecf4c2473dc1cc61ad2c21465a64a1651e525`  
		Last Modified: Thu, 02 Jul 2026 05:54:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f4b507e74a67098f32173e617b394a9413e3834fcbd700beb542baa33cef6a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4519712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c21ba2e26fc1722b27fe367aac4bd5f91e516a0cd82d2592b119c50b6ace9f`

```dockerfile
```

-	Layers:
	-	`sha256:e23123afe5b0e7ffa60daeb8f0c6e82652881feed2c28ac1fb04477f1c8b145a`  
		Last Modified: Thu, 02 Jul 2026 05:54:07 GMT  
		Size: 4.5 MB (4501853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae707cb767602b6b1abd9ad31034e9d0f7252af67b97614d606818f7c4ae7c6f`  
		Last Modified: Thu, 02 Jul 2026 05:54:07 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
