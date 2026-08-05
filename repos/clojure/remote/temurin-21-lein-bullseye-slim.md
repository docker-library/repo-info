## `clojure:temurin-21-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:6673f5d4af6729faac6c79bfc23eef75124647bba137a4a8ff9d00522cf33625
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c6c824db76564b78deedf4711bdf0780bfb7a26273a3cafca24b211d0a524244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208586472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516468b5ccaffd31bf5272d16d22f5a381508f87e9765f22388c6772563eb583`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:22:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:20 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:20 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:23:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:23:33 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:23:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:23:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998bd8de369dc445f4babe690ba29bcbfd61cd36b73a0643f9f4eb450a2d8b3`  
		Last Modified: Wed, 05 Aug 2026 01:23:57 GMT  
		Size: 158.2 MB (158166900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203713b67d7df570921018c27333b23c597032d9f749a947243ec0dd0f77b8e7`  
		Last Modified: Wed, 05 Aug 2026 01:23:54 GMT  
		Size: 15.6 MB (15644291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429a79becf40a0bff3278ac193741936a7274c5dda6331305aa38aac697e8da3`  
		Last Modified: Wed, 05 Aug 2026 01:23:53 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c8b51cfb765f40aa03075b874c692b9d31a8e3cfbfa2bcc78e76ddea05caa4`  
		Last Modified: Wed, 05 Aug 2026 01:23:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5442a2887787614f8df282161c3f39b2db8e9bda2e3616d849cc037e9be34dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe9033f493317ded98294abda562c946766c34da71c33ecf589117b3b0be5a9`

```dockerfile
```

-	Layers:
	-	`sha256:850dd7a024be91d1e9904f6dbdf7f876b689cce9bec1dcd85f339eb068e22863`  
		Last Modified: Wed, 05 Aug 2026 01:23:53 GMT  
		Size: 3.0 MB (3038964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c680fba7dd577046c28c22d57a59d4f4581d7177325d9d0f97467280d8db95a6`  
		Last Modified: Wed, 05 Aug 2026 01:23:53 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d2603cd0199d29bfe78fc5573e8f52053ebff2866809b37f1fc242750d2d098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205345561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3dc5e52002a563f0b1d099b06bcd0cd504acaeb05e1bed231934f091e58da1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:28:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:28:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:28:32 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:29:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:29:43 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:29:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:29:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615d318b03be5e8a040b76787e885ceabc11eac011f30a15904e047078841db0`  
		Last Modified: Wed, 05 Aug 2026 01:30:07 GMT  
		Size: 156.5 MB (156461276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4025afd0f11a1b4e3b38e4d106bc3500ee308ad42b238cb6d224378d39589224`  
		Last Modified: Wed, 05 Aug 2026 01:30:03 GMT  
		Size: 15.6 MB (15619760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b640db10dc42009cb934b0e0693d2281bd5c39aa6a5170db5a53d63f3c6eb332`  
		Last Modified: Wed, 05 Aug 2026 01:30:03 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf0fbcb2df1b722ff7fee24bed284f4b351d38ab44fbcf4df208cb48e282e01`  
		Last Modified: Wed, 05 Aug 2026 01:30:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:81e91e1a391111d264179bd143434aedbd8a50ebe49b2cc3fabfdf9302b4e94a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadcabec692215957a44d6773058904280de75312d5e8b8745878b7848b562e5`

```dockerfile
```

-	Layers:
	-	`sha256:8854d0dfd99bf939efdbed0467c05eb6ebec99632ab62edf314fa55241528acb`  
		Last Modified: Wed, 05 Aug 2026 01:30:03 GMT  
		Size: 3.0 MB (3038573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1236ee0188b9a637ce4b9edca52182b1293c3fdd2a7b7e572b4468011bcb0461`  
		Last Modified: Wed, 05 Aug 2026 01:30:03 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
