## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:4256ec2083e61965c81299265889a36c356dd3bd6fa8e79e204bf7fce5212a07
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

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e57ee1a5da9fc5a14c2fcaeeaa4d398d535a8033a471437d329fcbca5e3691b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218630140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf06113103d6744f9f0eba57859086196402118b98d30fe3eb73c8dd70e7b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:34 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f023d2e6c8043cab0a6406bb3295daf002e00260b61f3170f3b15b515096865d`  
		Last Modified: Thu, 02 Jul 2026 05:51:55 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c68bbd71438e8d2dd775e5b4c5403a2f556a7dc66b7f15c880b5efff5c92b0b`  
		Last Modified: Thu, 02 Jul 2026 05:51:52 GMT  
		Size: 18.9 MB (18890934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b3fc34485edd22c1a50992ff80fefb1c9c2fbc214ee6c434d57e372524194b`  
		Last Modified: Thu, 02 Jul 2026 05:51:51 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b336dd2416940a07ef434f193d3298fe090fb8822044f6816902aba5a4ec887`  
		Last Modified: Thu, 02 Jul 2026 05:51:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5ebcfdee1af18594df9f2403e0c423cf5db405c130be6a02f5ef7f31de1b7ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48762d68cf2e17dabd0fb09b5e2420022a80bf219f57c3e691f294f8b6f9afab`

```dockerfile
```

-	Layers:
	-	`sha256:84c24093286e023edfeb9e27a464d6ed3365639c60172e2e1429377dacc7155e`  
		Last Modified: Thu, 02 Jul 2026 05:51:51 GMT  
		Size: 3.8 MB (3817820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9d234c387766b6b4c596d3b2d645c94de093a4bd316dfc1b65b18782e1bee1`  
		Last Modified: Thu, 02 Jul 2026 05:51:50 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8d800b90d8b14ae1d814d015f2c8309ce48d611110d0e98a56134407afb8d47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217757924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556519321820ec7d17a554d7e81afb687d8daa93fce3768e72a9c2bcfb6bfc73`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:56 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:56 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:52:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:52:14 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:52:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:52:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ff6cd5b56335cca74925c23a4334ba011caef15238b0f5da846b6917783bbf`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 144.7 MB (144724296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a82eeee26f9984b89843075e343cb3e0d75a705f22542869cb1dc72e471f6f`  
		Last Modified: Thu, 02 Jul 2026 05:52:34 GMT  
		Size: 18.8 MB (18839595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d92520ea63e3811a143e34759ee7614f70bba364a38a2f62174a78ea8f6e104`  
		Last Modified: Thu, 02 Jul 2026 05:52:33 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b77c5f12edeb46b2bba39c6a2037e3afbeb6e64cb29da991bac26e4114da3`  
		Last Modified: Thu, 02 Jul 2026 05:52:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:59e5361062a69f7c86984dd907b4e03fc6935ba9b83314ab7540d33339d2a902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374d41d2e446c0e38d9ec99d5290da0d5d301c6716567e72f815b44dcf82ee22`

```dockerfile
```

-	Layers:
	-	`sha256:f39974f1b9a361c9102fcdc3d8400dc160b369b9d1f7f611dbef59112709ad2a`  
		Last Modified: Thu, 02 Jul 2026 05:52:33 GMT  
		Size: 3.8 MB (3818060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:939dd743a601c77cbb1ef5980c0086791add3a2cbb9cf14b3186e6f76383f851`  
		Last Modified: Thu, 02 Jul 2026 05:52:32 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bdd3e193b02b92475ab3e78c2b092eb9ed5a4e5df7b71b06f2a3a5a9ddb37b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222356478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96effb286c1b093e9f35c6d9f178db49f5fce4d383ba110bdf84a7b3675d61f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:11:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:11:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:11:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:11:27 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:11:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:11:27 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:14:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:14:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:14:01 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:14:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:14:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:14:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:14:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fb6abf97389a5480079f9476410ce8496802854d1eea95873a807f0a0b4c36`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 145.8 MB (145766153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f320c411b3f50ca1ddf88780ecda494f27368773b5c9638c1bf340490accff81`  
		Last Modified: Thu, 02 Jul 2026 07:14:40 GMT  
		Size: 18.9 MB (18936600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eef7575f4a4cb471c9b3d2532ad56c3cb8e8e55ce3b3002fcf582d31690f8f2`  
		Last Modified: Thu, 02 Jul 2026 07:14:39 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c14383ac91b27e684efadc58c59a4ab368da4b9512edd86cd0c9db66915c15`  
		Last Modified: Thu, 02 Jul 2026 07:14:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9073b5f66eaf1022676728036f799237b55a4e8e41b9110e210b6ffa2a4bcb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d9de5a0a9ee9da932906c2144cc4e4d167ce79ed358a24bf439f9d3a74addf`

```dockerfile
```

-	Layers:
	-	`sha256:acca30b8294356db0cd79d321f64605cf62170101eec5f542419a5ced83a1213`  
		Last Modified: Thu, 02 Jul 2026 07:14:39 GMT  
		Size: 3.8 MB (3818820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39b83ede636597198130b7b67086cbad36de3d48579bef70cdabf735619bd281`  
		Last Modified: Thu, 02 Jul 2026 07:14:38 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:711f513a71fb38cb1d2cdb60ace05bf9e8d79958c0849b300284ad328ab4d90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208734188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aac24b60a0ebfc6f3ff9405ce7557e5d0af65b9d4964dc899a66eef72ca2d46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:49:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:49:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:50:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:50:42 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:50:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:50:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:50:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:50:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9598fab6360d5c3867a386e94f3134b938d2577540e8d08b6fc7c90df608ef`  
		Last Modified: Thu, 02 Jul 2026 05:51:09 GMT  
		Size: 135.9 MB (135910453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c7144e3c169da92780960c90163ead9f1cd58cd23a0c84e9df2869e0061534`  
		Last Modified: Thu, 02 Jul 2026 05:51:06 GMT  
		Size: 18.9 MB (18922068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dcc8d216cbd0347f81d16c9b8b1f68bd7be1c1ee86107adb6bba0e9bc27ab0a`  
		Last Modified: Thu, 02 Jul 2026 05:51:06 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26072953013e8738dfb98734eb9891f1aa5f98609d89b2f28adef9e2e6584204`  
		Last Modified: Thu, 02 Jul 2026 05:51:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a65e60c4293c7c8bb1f414ebb5c83b79ab1eb6aeddf70b7ae6d4494f58d95b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3831965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a77bd4d80b2be06981937c4a066455378999184aad54638359b59e6772ff0eb`

```dockerfile
```

-	Layers:
	-	`sha256:2ace713305103f60645473aa505b99ff7ac2b3498b33debff63a05220efc3201`  
		Last Modified: Thu, 02 Jul 2026 05:51:06 GMT  
		Size: 3.8 MB (3814247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2051fd73b555778fe5389b7c59c678d9a421becebd0d5224d4ffa6fe87516ea`  
		Last Modified: Thu, 02 Jul 2026 05:51:06 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
