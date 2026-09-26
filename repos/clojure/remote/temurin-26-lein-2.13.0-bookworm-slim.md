## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:f4fe3835cb1c7398001721aa3b02fdb7ce28424a7e053a08f9cb759ecef73aa6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fcd34281d927fd62ddf06ee3cd37c7175b6996fd76e8117a6f48aa945c646092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145404708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4e7ad3d7cb0c91a7a5b3c9c373892deb9efd76b9d31b816239696b0ade62e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:25:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:25:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:25:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:25:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:25:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:25:38 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:26:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:26:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:26:44 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:26:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:26:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:26:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:26:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a58e95a4ef76cc7ba8abf6f50828a85e11e4c038d7f5ebe0e197d4ebfd0370c`  
		Last Modified: Fri, 25 Sep 2026 23:27:05 GMT  
		Size: 94.6 MB (94563489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea4c3e20cd3da834a5bbd8ebd5476c85279b8658c5875aa425a541dc3c069b2`  
		Last Modified: Fri, 25 Sep 2026 23:27:03 GMT  
		Size: 18.1 MB (18087133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe977affc002b448200d6b0885ede10be9216e4c30c1bdf54475689da52f8d5`  
		Last Modified: Fri, 25 Sep 2026 23:27:03 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61497a27833163e09e662813d60bb0d701a4230784aa32f3af9f77eeaba1b9e4`  
		Last Modified: Fri, 25 Sep 2026 23:27:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6e2f851fec8bd1db1d154b0a562d5282ad9a70f9d21580b2439a25adafde98b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c42a85c96a679bdff497daf9e96d26b1875398f31ec0930a164466fd70c25e0`

```dockerfile
```

-	Layers:
	-	`sha256:f3d8892446e711d860426064b7544dfe8b84141948e37790254b852c3d3b763c`  
		Last Modified: Fri, 25 Sep 2026 23:27:02 GMT  
		Size: 2.7 MB (2702511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a4af72c76fbffaab2fc9573ca60fd7fbba579b2007f8923eb1542d2f3e97aa`  
		Last Modified: Fri, 25 Sep 2026 23:27:02 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a9a7d141960c53ac585e45bbe4723b2f2a2eddf6fb69c69385adf6526222d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144091328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968c8dd7edd9b54c27ab92529ab918a1c5bbd9a7c9cc95f88721a0f55754b5a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:23:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:23:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:23:28 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:43 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c0d83aab78dd58b51fa2f311019518c3c13dda8693e309fc4dc8797ce28ccb`  
		Last Modified: Fri, 25 Sep 2026 23:25:04 GMT  
		Size: 93.5 MB (93543595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85aae34fcad5857e1abe66f4b7ca80bf10c2fcf4f987e034847a3328f5fde272`  
		Last Modified: Fri, 25 Sep 2026 23:25:03 GMT  
		Size: 17.9 MB (17908410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40de4a3b274dd0440be38438be276b9bb66d406ee16e311fbf5fcfc2dec659f2`  
		Last Modified: Fri, 25 Sep 2026 23:25:02 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5630b446dbd28749a4633d282a5ebc3ebd4f546003e3751d58af75719c79e5d`  
		Last Modified: Fri, 25 Sep 2026 23:25:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dbee2ca638978387c1db8bb5b17d53643b14a57d11714c4d45f3ec0d1f7f7dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e093906fef47d90ad2fa0027c223cc4b13d2c030fbe3e8ad5df977ec0633fc`

```dockerfile
```

-	Layers:
	-	`sha256:02922d032e78bd524735a8f06688ad324612f7e5e30cbba454843b82e4ba58a2`  
		Last Modified: Fri, 25 Sep 2026 23:25:02 GMT  
		Size: 2.7 MB (2702123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd44c10ca666c6a40adc9de4d9defa4c2d81743580408e5ef703011a368f7f24`  
		Last Modified: Fri, 25 Sep 2026 23:25:02 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:06df8a829291964d9c29200ffe29341430727cca8e5fe9e69530ce2b2005a802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148229246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8460d04ebbb6955810328f461759b1f24b945db35438554312ca7d6a7e47dd9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:26:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:26:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:26:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:26:29 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:26:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:26:29 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:29:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:29:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:29:19 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:29:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:29:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:29:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:29:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb0f7eaa32d2add0fff064c32d84dd30ce45330b9285ba34d961aeac4ce7fec`  
		Last Modified: Sat, 19 Sep 2026 08:30:00 GMT  
		Size: 93.4 MB (93350809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f09d2ee00ba5a2359e56a6f1206f600a3d115e8034f486ece83874074ff4977`  
		Last Modified: Sat, 19 Sep 2026 08:29:58 GMT  
		Size: 18.3 MB (18279231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787cb0be79edb41a66a481ceb69afee974f29e072aed969cbad019b2744cb2f7`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88249752a65d9ff483dbd300a3d9000e4edadfbdd3eddfb0c53fc7fea3ed003`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:58e5a4a76796581bc282a299d5a54b6fbf80a25948059e5a291f0231a3e50844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7006868d77d935726902cdb3c04fc000aa36b98938fe950a0c35f666a6a8a84`

```dockerfile
```

-	Layers:
	-	`sha256:304b83f8ec028bc1296157c673845142a7ccf094271d154f5083216d9fd88cb0`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 2.7 MB (2688274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e6a910dc6264b6c81db6063de7cd6620a12e7ece9f9c26832c93d184f541b19`  
		Last Modified: Sat, 19 Sep 2026 08:29:57 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
