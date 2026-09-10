## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:16e1fd0064017f5504256c693d42557f2a2da7261950f5427391c5783e022376
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f919635ae55ab88f01c1b03feed8468db8d682e16455d6bb440517d3f8d0d897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222096919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816a9837b1372568f8bf4b9a6174c5e6d86e7c46182ee817faaf3ab23925d140`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:46:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:46:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:46:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:46:47 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:46:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:46:47 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:48:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:48:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:48:05 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:48:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:48:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:48:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:48:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb6b0724850bc3cf741f7e81db16808c1f5ca45181aa369982be2cfd413de3b`  
		Last Modified: Wed, 09 Sep 2026 03:48:27 GMT  
		Size: 145.8 MB (145822679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7111aa1c6846f47bb408bbd7c56eacee835e2b260860c600b78dcd32abccd3f6`  
		Last Modified: Wed, 09 Sep 2026 03:48:24 GMT  
		Size: 22.4 MB (22420806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5b3ba8bd78440c1b689b4060f2a5af580f18adc55e343ced5b6002188115ca`  
		Last Modified: Wed, 09 Sep 2026 03:48:23 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b84aafca282cdf9f45fd5c692ec9ed77012b59a1401f1bf91c223e19224c710`  
		Last Modified: Wed, 09 Sep 2026 03:48:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fc01e9c566c901b7bca90a6e9d765288d0c8e486f296d7ecaa7489f489705f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00be5a1115ecd83e54dab77c0b2e162c3d35c9fcf6c94c785af6407147fe57ff`

```dockerfile
```

-	Layers:
	-	`sha256:6b8c67cf85458ef07286b9caac9e27a811a97b4c3d70d475d0443b966539c16a`  
		Last Modified: Wed, 09 Sep 2026 03:48:23 GMT  
		Size: 3.8 MB (3822832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2a40292d85132eb7a9f1d302731fdd86782fcba9e6074915d94106316cf28ad`  
		Last Modified: Wed, 09 Sep 2026 03:48:23 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70483cd7c09498d787013420131f7009afd5458a97855e145a4c8d5085e03db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221610017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff0438142a2165497c2c510d8f89a4176323b3aab23e2eb70ed2beb5d93dd13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:58:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:58:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:58:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:58:22 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:58:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:58:22 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:59:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:59:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:59:41 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:59:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:59:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:59:42 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:59:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00757a112a763e8f2977a9256aee63e9efae11dd9e3f1c5e365f06a74ed092de`  
		Last Modified: Wed, 09 Sep 2026 03:58:56 GMT  
		Size: 144.6 MB (144647516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0673223e29d30a5ca20a93dc83fffde7304e0f5bf1b475046f86648dc19212`  
		Last Modified: Wed, 09 Sep 2026 04:00:01 GMT  
		Size: 22.7 MB (22742036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e659d1e2cef4f023a87c9027b1cee1c43b7b0b02a56d25c9c73095778cfb40c`  
		Last Modified: Wed, 09 Sep 2026 04:00:01 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d326dfd15c44652699528aef85d261ccdf8edfcb608f52a524c68a09145ced47`  
		Last Modified: Wed, 09 Sep 2026 04:00:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3bc3477f1c55d5a387904070e11c740d53f13bb8095e21744cf9a91c2b009f41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2b74228994d67031906f955625490c257e2290b2e291fa455a339430f5b85c`

```dockerfile
```

-	Layers:
	-	`sha256:992564b601e337d95d2ff2102d8053ba8dec2111a63769b4669baad3c672e84e`  
		Last Modified: Wed, 09 Sep 2026 04:00:01 GMT  
		Size: 3.8 MB (3823072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:584c5e50d37efb9f5eee9e1f7cc787cefd17a8f3e4b1575258534fafc583031c`  
		Last Modified: Wed, 09 Sep 2026 04:00:01 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e4f182b89deadfdba72464efd22c44d9ba9068ef77d827cd595832b32748b2b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226064184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0970d2cbc86c0ad8436997ff6fef92634aa9aa1979f5192ab11c1a1ee35d5c62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:50:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:50:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:50:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:50:56 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:50:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:50:57 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:55:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:55:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:55:42 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:55:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:55:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 10:55:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 10:55:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44354770dcb448653d17ad2f8e125a868d715f2a73a24f399cae252aa8480b9a`  
		Last Modified: Wed, 09 Sep 2026 10:56:47 GMT  
		Size: 145.7 MB (145674329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e7098bb98b2ea240074fb36afdd9a0ca8cd3f6228226b2dbf713a54de2d9a5`  
		Last Modified: Wed, 09 Sep 2026 10:56:41 GMT  
		Size: 22.7 MB (22709914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e31cb5ec66a2bbf265c0630c3ba87b571aca403fcbfc3773f682dc451dfc81`  
		Last Modified: Wed, 09 Sep 2026 10:56:39 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce283d6abaef932bd5553e4c98b1bcf4c99559058ad0c4fb3db5862204c99aac`  
		Last Modified: Wed, 09 Sep 2026 10:56:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:24db0f7ab0b784d478b4ef0b7ef33fc28796e34121c097d827ec565f3c7a1067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d48f0adf855cba598a124cc8aa9c10eec0919695108ffebf95944b3d8441cab`

```dockerfile
```

-	Layers:
	-	`sha256:566561178cdd55d856c7e5ee2f8457b40c53f1326be9ff08281fea3efe602a29`  
		Last Modified: Wed, 09 Sep 2026 10:56:38 GMT  
		Size: 3.8 MB (3823832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1e899e7255cd71f7b6c1489473063a0d9eccc18375e355dd26f2c9a396f7a5`  
		Last Modified: Wed, 09 Sep 2026 10:56:38 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json
