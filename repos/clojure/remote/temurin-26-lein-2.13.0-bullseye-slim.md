## `clojure:temurin-26-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:f3fb553e58524e39a273ea6465a4315e78e58930b521a48ab668019af00e8493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b45f57efb2f5b48507151e6946d9005aa9789770ccc470690ff1c4e4761980d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144982243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29dcc786332fdfffdc00fe409de1267d37dba91bfcd32b2d8395c2adc4f92d65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:22:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:22:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:22:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:22:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:22:16 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:23:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:23:23 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:23:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:23:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fdad25caaff5c413270fe1ebef9e11af18bade7a24a9ad6b017221cfb42ebf`  
		Last Modified: Fri, 21 Aug 2026 19:23:45 GMT  
		Size: 94.6 MB (94563730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a387a3e49d0a86a39219c517301afc57b014e062ca1d6b0a4116f1ac69eb798`  
		Last Modified: Fri, 21 Aug 2026 19:23:43 GMT  
		Size: 15.6 MB (15643240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bdf9c38f0a95f907a02d751d92e48e3c7085cf444feb0ca170f98c6af2057dd`  
		Last Modified: Fri, 21 Aug 2026 19:23:42 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0be0f139fcf9351e20d2afb70563fec984a81196f6e6b24879089678345889`  
		Last Modified: Fri, 21 Aug 2026 19:23:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30161d9668c09d232842b2d982031b3d234aa938a682f31e24f69643358499a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060a9e728527681f07f1bc8addd8b3d6f24176c91f5036ee00fd76d3b962811d`

```dockerfile
```

-	Layers:
	-	`sha256:815e4916a2382a6f48f1f01a48abd33e4406a713c27da6106a9287b572cab575`  
		Last Modified: Fri, 21 Aug 2026 19:23:42 GMT  
		Size: 3.0 MB (3007208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83fa7835b33db27972d695df975400f90e2b9c7ed4ee0c7729e74daa77fdfbf`  
		Last Modified: Fri, 21 Aug 2026 19:23:42 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc6030a0e67c3beb685191219089b27c6d01eb99456dc935ee63c1ee2c50d253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142437719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd78011544798ee45f51178cf47e653a11b0284a75543d33414065597e8f3c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:12:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:08 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:12:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:12:08 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:13:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:13:16 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:13:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:13:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d05c26dd2ff7f8a9f4c6e841ae9cdd5ee767df75d4baa67dcc84397220772e`  
		Last Modified: Fri, 21 Aug 2026 19:13:37 GMT  
		Size: 93.5 MB (93541549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf088b97e93dbfdefebb6846caca7a075de67ac6a2942d3cb0416fadbd4f941`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 15.6 MB (15631626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c125d86510eb435a8e9e5356a52f1130f6f65d01f7c1e22833a47c8427b7395`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370cfe54c6f451762051735bcc281dfdd420c7feb7a39d1fbe0016ced934870d`  
		Last Modified: Fri, 21 Aug 2026 19:13:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6fba529d7f1387a10a09bb2b4957687508faea7a21b09b7a0e7fe0b834b64f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313cbf58a353d325ec714d0d8d69cb3ff03428e81e9cfa83d467c3d3d9ebdf1c`

```dockerfile
```

-	Layers:
	-	`sha256:84d36778e21444b2f862cb60c95486fc2fff1a1bf0dc7b80ccd44bbc0aec5eb1`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 3.0 MB (3006814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a023d6c8ae16edcb035c35cfe446ce245d38cc1bc525cecb71e649bf34b01c1`  
		Last Modified: Fri, 21 Aug 2026 19:13:34 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
