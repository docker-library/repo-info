## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:46375862e0ea676e8b66ff5fb95ea0b079b2ef89b0c696fdf516a6fc89f59b1e
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
$ docker pull clojure@sha256:80a6a2b5c0bdeb809be35ac4b1cfabdad02d893b606768ec857f316cc787cf96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187218161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f0f362e3dd2a783a78a246182873e71b42ca03ced944e330534450421e9463`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:27:30 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:27:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:27:31 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:30:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:30:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:30:08 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:30:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:30:14 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b200549180e0ac6d348d09e9eaa1a642a7f258785cbe84e00165e02e14b70b`  
		Last Modified: Tue, 24 Nov 2026 12:30:51 GMT  
		Size: 132.3 MB (132272159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2403649dae1805fbcc70e60d20ea19c04384cd2c291b7e0393a349232e9a665`  
		Last Modified: Tue, 24 Nov 2026 12:30:48 GMT  
		Size: 16.8 MB (16778108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dde6df972bbaa4cfc0f2c869865d1a16a6daeb76d1a77679fa12933f9d86981`  
		Last Modified: Tue, 24 Nov 2026 12:30:48 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:58c1a5d377fe00f40bac16a0a3033e74791bd937260e62914e41204e0147d205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04a972a4e9596fab891f890b754bfe7dd6a0f7c2ba0b5761d288d1d5b203818`

```dockerfile
```

-	Layers:
	-	`sha256:788b2b3d4302690b4290f4fe6b4a48f577e508da931e446c0d2634d0f77813f2`  
		Last Modified: Tue, 24 Nov 2026 12:30:47 GMT  
		Size: 2.4 MB (2390411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b8418a434b5c443ad1914d58a1badd0e3b1bbcc5efdc96cdc90ef4749df2c79`  
		Last Modified: Tue, 24 Nov 2026 12:30:47 GMT  
		Size: 16.4 KB (16404 bytes)  
		MIME: application/vnd.in-toto+json
