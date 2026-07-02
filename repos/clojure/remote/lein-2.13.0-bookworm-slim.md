## `clojure:lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:143c4c5e1de6628e521641b0dd9107fdbc30fe1f8151d83e425284f5d7e2d048
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:540fe3f224af71631203bbb53cf721f12862f06e4b2c298702cbc5286a40406a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143399699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ce2826e2dd22075f17fbebfce4f553309b7256500e4013416abe9a23c834f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:53:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:56 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:53:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:53:56 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:54:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:54:59 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abbd254b4c3576e122e0fd35daa06991d1d590db4740a43c1bd5ff0d160b94d2`  
		Last Modified: Thu, 02 Jul 2026 05:55:18 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bc5d933c8d9d6ba37a23f9c2476b4c70681b070a4f765f21ffb18a867d405a`  
		Last Modified: Thu, 02 Jul 2026 05:55:17 GMT  
		Size: 18.1 MB (18071881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe24a2b77aa7cc82b36d5734f8a568575d4549c0c24701693bd0ed9fd17e689`  
		Last Modified: Thu, 02 Jul 2026 05:55:16 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a703842ea66cb9db6c0b9914df363a80687f56f75b7d8f9e520a198a7e571`  
		Last Modified: Thu, 02 Jul 2026 05:55:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:73e640d600fad14e38a98cad24aed7cb95b3a509aae06f0f5221b6553887f89b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ba3d725be7507702f59bd3694c2c795b5259501826b6a2f5273480ae7088a6`

```dockerfile
```

-	Layers:
	-	`sha256:972ce4c6fa57707ddf0a0d334bdba0402af0885727355a282a6f738952a274aa`  
		Last Modified: Thu, 02 Jul 2026 05:55:16 GMT  
		Size: 2.7 MB (2700393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:877fecaf8a529f2c36475889dee4eba3593ee9ccba1668a14aa75d8cf46f02fa`  
		Last Modified: Thu, 02 Jul 2026 05:55:15 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:44f2cfb46742a7d216b323cbcada4ab8d53dd7ebca6cd3df103d72501116ebb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142074505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90483b1daa005ab0a0d3e4932e9419b5ab16d846113aa0b9a4642e24b7bdab38`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:54:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:32 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:38 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293ccb07f1332eeab4222a874cf5cef5f2bf0ad4c55716c1c23819654dfa95fd`  
		Last Modified: Thu, 02 Jul 2026 05:56:00 GMT  
		Size: 91.5 MB (91542269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd849045e1a974bfc8d3b65b31a5c0a93f4d54ad27e4a739ce984b01e93251d7`  
		Last Modified: Thu, 02 Jul 2026 05:55:58 GMT  
		Size: 17.9 MB (17894176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2d49c3e09c2f3d78b558556d6069a73ea7c3413234755972e18a85ade0465d`  
		Last Modified: Thu, 02 Jul 2026 05:55:58 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0e64ad53f1b60fafb07707597b84cb529ec5fa9b1bc4d136ff77e6a3327b8a`  
		Last Modified: Thu, 02 Jul 2026 05:55:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1218cf5c41a4d17c3bc5d45f3fed8976362b10f30dab4e2c7db9cd544b25a2b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6902e735e2bf8f8e70cebfbaa5947ea7c2500f4dab3b6472200fbeab16afe380`

```dockerfile
```

-	Layers:
	-	`sha256:8567fb0bc6d79ba7fcbadabacc28779ea605ddef4f542604715cd0b8939bf231`  
		Last Modified: Thu, 02 Jul 2026 05:55:58 GMT  
		Size: 2.7 MB (2700029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c27847fe7520dab8009ea132468ddfe4738262eec5db8d91c745c82682d16ce`  
		Last Modified: Thu, 02 Jul 2026 05:55:57 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:903c8ff4c5fe144ff4475d4f434a7356a6221d5ec556b27b6eceb59dbf5b9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146775315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9495b4b574cbff32a1826b14d48760eb493732a3f47133d2612b48f2b71593cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:34:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:34:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:34:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:34:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:34:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:34:17 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:36:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:36:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:36:49 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:36:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:36:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:36:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:36:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ad1347ac99eda388900bf32362d26821dc5ce6f75106fcf350c34a7f8986e6`  
		Last Modified: Thu, 02 Jul 2026 07:37:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc31dbc987790165ffe649ac06b50e16b1db8cbdaf13042aa595bc10c0b2335`  
		Last Modified: Thu, 02 Jul 2026 07:37:37 GMT  
		Size: 18.3 MB (18263673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611ac6f2411f937398e255945064d8192fde6eca9e5f02b7157f909e928e7717`  
		Last Modified: Thu, 02 Jul 2026 07:37:36 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609525743aecc2933ad6d26f2588fc7ad1a464929667419c74f8af08f58e8b4f`  
		Last Modified: Thu, 02 Jul 2026 07:37:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:272ba8ccbf7a7868663e6313a859e2b8b9015b79651128c8526663b8b6d06c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06698088de55a5c2fb9b617bd481e7c19294314d430f0ecabf7ac88d3348f94c`

```dockerfile
```

-	Layers:
	-	`sha256:7d4cfc830e2fdea0e68f79b2bf14271fd601812b36b7439233bfe3d9487702a4`  
		Last Modified: Thu, 02 Jul 2026 07:37:36 GMT  
		Size: 2.7 MB (2685550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75e93001eb2777a79a834540c28c137dd9313cf7abe7d634fec44685b440e282`  
		Last Modified: Thu, 02 Jul 2026 07:37:35 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:abe9b9898d2de2e012d6038ee54fe516c6ce2340e1b39e2b7ba63dbb2e7bf441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137554269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8b396d54e3b1f32a18cd8dca4d3360a264a272f1d9d9a4eaa196ededcdd89c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:56:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:13 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:13 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:15 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8f22de9cf7951ca443fc27cb959f83f302f063512ce7dce852444adccf06b0`  
		Last Modified: Thu, 02 Jul 2026 05:57:41 GMT  
		Size: 88.4 MB (88420367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e059919e2f12f46f99f7bead6000f372297707fe192697e69db8c1363a6583`  
		Last Modified: Thu, 02 Jul 2026 05:57:40 GMT  
		Size: 17.7 MB (17724673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0437d5f2126b1af720eb6c93f698a503d10b7c05c420814e3da75127ad50b87`  
		Last Modified: Thu, 02 Jul 2026 05:57:40 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80784e924fada329e1d5b1b5ca85347152fa4a0aba0f03a5ec792c828b1c7928`  
		Last Modified: Thu, 02 Jul 2026 05:57:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4feaaddc7e5101871750f329634b8792f15eceac0bef1f28144c64c5135450f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7f763d04d3369a9e4fa75fe57236cfbc9f27d89f635e9a5465291098a2d7be`

```dockerfile
```

-	Layers:
	-	`sha256:a60b345551e0e19607e6a9cf132571c2a8439b54ddaa6b1c4e83c0adb23a973e`  
		Last Modified: Thu, 02 Jul 2026 05:57:40 GMT  
		Size: 2.7 MB (2676769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c75cc5ef8a343dfb4b21fcf8c2254aac0e49d51c65596cd5fd5642666b60184a`  
		Last Modified: Thu, 02 Jul 2026 05:57:40 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
