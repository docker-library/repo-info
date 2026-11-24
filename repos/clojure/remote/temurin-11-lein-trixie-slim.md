## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:210280cdbd15f1b2896c13234a345989326ba61860f0f117237e59219faeee37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:661dc8ba80a5b880afe5e4259ef7e21e5b54de48e6df6051d0b129f84e5a6e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197021780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccf423135dfeedb172c85710d6eb46dca5c53d032e70af04985b722c44478c9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:09:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:27 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:09:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:09:27 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:10:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:10:50 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:10:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:10:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6aa3539287477cf771ca3236fe36a3f0cd47c2ae6102fca36bc73ba4ecb1051`  
		Last Modified: Tue, 24 Nov 2026 05:11:10 GMT  
		Size: 145.9 MB (145923093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa0d5d9fd45a0d50b7d2ff08fda2f86ee95fa2b14a8852f57bba633a2a48d96`  
		Last Modified: Tue, 24 Nov 2026 05:11:08 GMT  
		Size: 16.7 MB (16741283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46ce43955d3b57fe897412c499c5050e6fd9dba83e65daa3400ea7124197d858`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a7f5538a2c1d39285984cfebdf2b338a0f129eecc16ffbbac96332a7525f39a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b063a8d4abfb68d9816b58f32a0f90a9e5e64281e6705d78fdcb25f3206dfb0b`

```dockerfile
```

-	Layers:
	-	`sha256:9e1ea4445429b891bc729a26458ab8ee5d93ec19381261b57c79397d1c8db3ed`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 2.4 MB (2391292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4357204cfd3e876d19ff4b7e850082da3aac5f79c2109e57b8c193a7f7f2cada`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 16.4 KB (16360 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e1eccf06480e37519c021344b37dda663a6988f286a10e9443b76f9662858a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194051853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e9b75931f25f2644e49215f309cb4389e45f3b70365044fbea07283a77ae26`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:17:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:25 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:17:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:17:25 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:18:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:18:43 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:18:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:18:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8727d5a25dcda33ab0724a6b3b52cede45b5fdcc4f1f0160b6312b58767e6574`  
		Last Modified: Tue, 24 Nov 2026 05:19:04 GMT  
		Size: 142.6 MB (142621036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918c501d89708b646e14a40cc90a7646f6b66e6271205f2b0ea99b357617c6f6`  
		Last Modified: Tue, 24 Nov 2026 05:19:02 GMT  
		Size: 16.7 MB (16717527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d7e747de16fc72a0b585fc486f57e9ca65068fa077c26022ff63019bd9a3e3`  
		Last Modified: Tue, 24 Nov 2026 05:19:01 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:57807c1a5f03606967621095996a00dc32c8c343945fbe4c5796b8a332daa359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9ab9e1c172f619b3c15caa4c854abb3a1c4f83aeaed91d7d8ccc86d812b86b`

```dockerfile
```

-	Layers:
	-	`sha256:7de78e306d1502e4982ad0e047e31f6d2397fffe7b6d5aca9d8d75e6a6ddce1e`  
		Last Modified: Tue, 24 Nov 2026 05:19:01 GMT  
		Size: 2.4 MB (2391520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20314defc22088ece957f4692636fa4c42f3aefe62fca5ea0138b52b4817df20`  
		Last Modified: Tue, 24 Nov 2026 05:19:01 GMT  
		Size: 16.5 KB (16481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0dbd157e89ab4d8afdda20c105d9b0737cc45e61fa5121ed81a9b752a9d8fe80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190447022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd1fd7536d4efe173721868cdb2d8d7cfb9dabb80bfa4aabe966f801768064e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 01:34:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:34:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:34:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:34:58 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 01:34:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 01:34:59 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:08:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:08:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:08:55 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:08:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:08:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31f366bf090e4cf999382bb1ba81ce4803993f75a4130b6ce531aa40f338236`  
		Last Modified: Fri, 20 Nov 2026 01:36:53 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902e9b22fdb77ab240852b3239670fbab7e0323aedf576756848739e007227bb`  
		Last Modified: Tue, 24 Nov 2026 00:09:17 GMT  
		Size: 20.0 MB (19991959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20008a547242b1ef301a4bee83281008907cef18c664ba923946f1f132d462a1`  
		Last Modified: Tue, 24 Nov 2026 00:09:17 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:032c3c6a32050711d08f0d5af0ec7014845c034668a1553dc44f44c4c43458c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc96d57f3147ea65c293c22f046320fdebca5c51bb064f16414321438430d21`

```dockerfile
```

-	Layers:
	-	`sha256:573db4ffd0b66cd02e433d00453b6abbe4e8bfde9e94ed921e51dd2dce810840`  
		Last Modified: Tue, 24 Nov 2026 00:09:17 GMT  
		Size: 2.4 MB (2390383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1da4823566661ff232150f4ac7ec8aa43ea90d38492430a9b0bc79e2b9eb456c`  
		Last Modified: Tue, 24 Nov 2026 00:09:16 GMT  
		Size: 16.4 KB (16404 bytes)  
		MIME: application/vnd.in-toto+json
