## `clojure:temurin-11-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:b08515ff4695b574ced1cfaab8aa8afc7a2b780cb87914ba15a799cac6d0bc8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8b0515cda12bded5668bb674cc0f1434164162cf758c7ab8851152dfd1448b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196292658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fed073f04c2f0a7daee88d9d1ef583ad2791c6f26e80b1668060a0f5addd01a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:29:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:29:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:29:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:29:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:29:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:29:58 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:08 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:10 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8994a895909cbdcc8ab166bec0233d11288a0f0794556d23b057d9f7881338d`  
		Last Modified: Thu, 16 Jul 2026 01:31:27 GMT  
		Size: 145.9 MB (145886182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57529c5d4ab45804e9995d295446a9bfc4ca31a32fe4199dda677ec2990162a8`  
		Last Modified: Thu, 16 Jul 2026 01:31:27 GMT  
		Size: 15.6 MB (15631471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf81580433f03d4af6ddc27dc5ba10d01cc3a4367ecd5adc1df599c26982d35d`  
		Last Modified: Thu, 16 Jul 2026 01:31:27 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2efc88ccb6d5eafe6c280620f377ee9c05facd18abf81c2a58d747c32153715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d84084e2e25f378fef26296a8e135a2408eb57460d91fe264a30bd7cd2e684`

```dockerfile
```

-	Layers:
	-	`sha256:775d8d79aee0c07813f5ea0c649563242025a7b29fd56514295e3bb1bf30d4ff`  
		Last Modified: Thu, 16 Jul 2026 01:31:26 GMT  
		Size: 3.1 MB (3056628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:076a56b0c65857d5d0a92b23959ddb19574edc466b5d277763f165c3586a6f25`  
		Last Modified: Thu, 16 Jul 2026 01:31:26 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:048eb3404ffcf59364528aa97cbc274d6e953670615df7b35d22ebc01744051d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191478035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00c66eeda565a572c43f732d9ddb83555a29e3b96a048dd18386f39a1b530a1`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:20:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:20:55 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:22:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:22:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:22:05 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:22:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:22:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb78378a96f9776f1368588bf7e5ccf81465e8d189c9b8c6f2f14b18fda9cd8f`  
		Last Modified: Thu, 16 Jul 2026 01:22:27 GMT  
		Size: 142.6 MB (142582169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db44b9184b17483b71afda415c5ce618a935ff5b2bc8074ccfadb6540208d63a`  
		Last Modified: Thu, 16 Jul 2026 01:22:23 GMT  
		Size: 15.6 MB (15631646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725ed283f0be7aa0d081b17da7277dc75e450ef752fffa269005d7070d03ffba`  
		Last Modified: Thu, 16 Jul 2026 01:22:23 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2281bc9795386e8734a4bc673c43100890f2ca45f231154849a3900a8d3fb1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010617329a2db651eb525ad89685de856932b86dcf2ae82cadf0e7609a1212d7`

```dockerfile
```

-	Layers:
	-	`sha256:24c2c895907e392f2737053bbade12ba25393e480a1a53b17717da3e3dcf40f0`  
		Last Modified: Thu, 16 Jul 2026 01:22:23 GMT  
		Size: 3.1 MB (3056855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5fc8eae106e740dac7fb5484ac5bf1849024e50add2f5a599aaf84c73268a3`  
		Last Modified: Thu, 16 Jul 2026 01:22:22 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
