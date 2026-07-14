## `clojure:temurin-11-lein-bullseye`

```console
$ docker pull clojure@sha256:646dc912a7e4b4e903152661982e4d33bbe18abb874e7b1bf1aa619a11bc47b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ddcce8748e45da905eab697f45dc4b403b1d5b8fb87d513e1565e98b4fe353bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221118355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430d782cc7fc75c13109c68813c97246e3e126af8e0779f6c4851b91c6c6ce98`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:16:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:16:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:16:32 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:17:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:17:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:17:40 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:17:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:17:41 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809aafe495e69a75280eb4d30ff0045bbf683e01c3713f25bd38cd22d47728a3`  
		Last Modified: Tue, 14 Jul 2026 02:18:04 GMT  
		Size: 145.9 MB (145886159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554d249051c63251b53ffa12e84ccc43e8889438911aa7175416c9df9cc74ca9`  
		Last Modified: Tue, 14 Jul 2026 02:18:00 GMT  
		Size: 16.9 MB (16940408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac59dd97f87660922e1d1885b827c50c51f39fb90b9bfa3aeef3fc4a6111f62`  
		Last Modified: Tue, 14 Jul 2026 02:18:00 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:6dbd1e939b0089908c36d56b4f3ff0ab0d005e9dd9f1a7e5999cff7f55c0e760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e2c2bbd18e271d14ba27a8a7b7c9428d5688e8521814dbcd102630ba100f2b`

```dockerfile
```

-	Layers:
	-	`sha256:f1d08fc4ad09263e167d19fef8e8bebb7881a77e1faa65e2e374bbf1fa9d22ee`  
		Last Modified: Tue, 14 Jul 2026 02:18:00 GMT  
		Size: 4.5 MB (4520543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:462bdb648f92ec4ca80df6c079f2dd8760715ddd0fa85a8f7dc8681d20255ccc`  
		Last Modified: Tue, 14 Jul 2026 02:17:59 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2445cbaa25bc65343b27c526699b19586f7a4f58dd0219584ab3b73f569b31cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216286131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d770bb3a7c823b0c657fc7543cde1434a39fa7eb5775c430dab681062696dcc1`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:23:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:36 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:46 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:48 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f2c2a03675a4c859f808e95ecb0f847557ef49e01d611e89f65519c0d78fe0`  
		Last Modified: Tue, 14 Jul 2026 02:25:08 GMT  
		Size: 142.6 MB (142582186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01abdaba87a3fadf66d08f5e0f5aa5907607c210f51afffe69e922c758aedd7c`  
		Last Modified: Tue, 14 Jul 2026 02:25:06 GMT  
		Size: 16.9 MB (16927788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cd6c5abaf6b0687b2ccb0ca9c081d3d66192aa6f276f4549ff2891c33814fb`  
		Last Modified: Tue, 14 Jul 2026 02:25:05 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:cb9e09f3d09bd0dfa80d57129ec36d5503af501103a598eaef8d01f6e8f93e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e549db71330189364c293a4fd8e2f6664498edce38a38d6455e64c88b81d6a`

```dockerfile
```

-	Layers:
	-	`sha256:448f497c7ea1607e382797a5b869bf736cf4bcb84686e6f848726beba6f9e1ad`  
		Last Modified: Tue, 14 Jul 2026 02:25:05 GMT  
		Size: 4.5 MB (4520135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b422f72b38444282433d4b1c3c039b9f97f04f44c3c9fb31b5c883be39936246`  
		Last Modified: Tue, 14 Jul 2026 02:25:05 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json
