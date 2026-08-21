## `clojure:temurin-25-lein-bookworm`

```console
$ docker pull clojure@sha256:f7ebe4ba67b9e42eaad4254dfffaf26f908843f24d7c98652a5ff66c73370b8d
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

### `clojure:temurin-25-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:6278f7c9a41a6b5d4e18b97bd8933947b87a86e601d59f2f9d4cb406d247288f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165751409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ece4dcc988b3383d39badceee7a563d6010ae2a61c6c34550e1e0fb67e9dc5e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:33 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:33 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:42 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:19:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:19:02 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:19:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4ed75abb339e183b3838b8529f16dee4fac7de85ad8a69031a631e6fa3999e`  
		Last Modified: Fri, 21 Aug 2026 19:10:22 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4c00f123da2ec7d3fdebdd81c5b7fc81b3af9a8923e9a61551e01557407beb`  
		Last Modified: Fri, 21 Aug 2026 19:10:19 GMT  
		Size: 20.1 MB (20123595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af4dabe7b0cf4bde66fc9cae83a588d2f286d1c4dc9e9908f6a4b08034e160f`  
		Last Modified: Fri, 21 Aug 2026 19:10:18 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9a6f855f59435f90b89dfd1e7f19b3626f69c2dea24a6bc52b01a3026ff4be`  
		Last Modified: Fri, 21 Aug 2026 19:19:09 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b12cf867fdc02080b0866feebf42c41ca4d4bc2eb47f513ca7db5d022424638d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e735a34485572b396a471385648172e83cd5ed36dd607581fe455e6088add5`

```dockerfile
```

-	Layers:
	-	`sha256:40b6d05ff346896e6da3f50a4359af8c12ac658e6c739e4ac6a62859063a4cf3`  
		Last Modified: Fri, 21 Aug 2026 19:19:10 GMT  
		Size: 4.3 MB (4258549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293a70474ea740b41e2d60fec092be408f15bdbe89905fe02d8220a74542648c`  
		Last Modified: Fri, 21 Aug 2026 19:19:09 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48c8b16194b95ac89a8ae0e8222ca141038c45b5249aa82a1915a821426ae7a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164387225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db8deffa15a3a31049a8189b6928bf4737589de7a69d58322c43a3bb84a8993`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:07:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:07:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:07:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:36 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:07:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:07:36 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:08:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:08:46 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:08:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:08:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:08:48 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:08:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1c3724d60a6a8c430992b3458f3322e187473a99f084ea28861aa84c1b5bc4`  
		Last Modified: Fri, 21 Aug 2026 19:09:10 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d52c916a8f3c88880fb435feb786b107b8f203b1b95722d419c7871c307c0a`  
		Last Modified: Fri, 21 Aug 2026 19:09:09 GMT  
		Size: 20.0 MB (19956039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729cff3f91a803dc8666f7c062aa99b888faf1982a65bc3d0f27ec144318a03a`  
		Last Modified: Fri, 21 Aug 2026 19:09:08 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793952b60c1d57df7e5e7ac1bab3a5294379d3ac78d93f74d97ae55e1311648f`  
		Last Modified: Fri, 21 Aug 2026 19:09:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:23e81579ba86baab0bdff0cd1b983349e3ea4afec65ae98dc550209e868e2424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7ddaac06033d28839f5961a99e3f4e69208ecf575df2834419da6fc621b7fd`

```dockerfile
```

-	Layers:
	-	`sha256:c70d1778ef485a82a7b71de87057d6b171041a9f37cbbcfd4298290f99d4290f`  
		Last Modified: Fri, 21 Aug 2026 19:09:08 GMT  
		Size: 4.3 MB (4258233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:131ae57b50e6e21ae82dded1fb65722cc7722eae909c23bdda112703d3cfb627`  
		Last Modified: Fri, 21 Aug 2026 19:09:08 GMT  
		Size: 19.8 KB (19821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b3e79fdd79f5d4334c461e11c0c5c0b4355b387f23fa06e4328009bba7f667f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169119492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4689801d726f4600c6a724f1e560967e9e546134bf6e99b1ffc5bc49d8d61eb4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:46:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:46:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:46:36 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:49:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:49:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:49:23 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:29:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:29:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:29:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657805ed81c8838b19ae6cc208be44286fcb1fb1507004590b5867ffb623de4f`  
		Last Modified: Thu, 20 Aug 2026 00:50:38 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd1550bb530a2d9cb6672be925b197bdbcfdab635b803cfd10fb30efffcd964`  
		Last Modified: Thu, 20 Aug 2026 00:50:35 GMT  
		Size: 20.3 MB (20348353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66c2da4905f333da1199678fcf9d14be03dd9f5b269375e2cb34c1e791aaf27`  
		Last Modified: Thu, 20 Aug 2026 00:50:34 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cecddd6e71a2634e5aabc6d0db4468897884f9436bbe31a0ec2946b02bdd50`  
		Last Modified: Thu, 20 Aug 2026 01:29:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:11cf37fc8e8efb27e0c82446d35577961f05a6860ef33e9b3d81ad448b1d3598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197fa2153ed34fdbd82865e8faffd8adb6ccb6fe5dd20833632e8bde9b660788`

```dockerfile
```

-	Layers:
	-	`sha256:e6d0a0093f9e658bb42961d3051c4ab22228946b7d2dce80b6535a2080d6e1c3`  
		Last Modified: Thu, 20 Aug 2026 01:29:51 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69e038574aaf50115bbebe4de7efe058ea35ed5ea4112ca262901ed6f0d657e1`  
		Last Modified: Thu, 20 Aug 2026 01:29:51 GMT  
		Size: 19.7 KB (19708 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:7be80b48759c0838f2595b6c1aa0883294a2979966245c823dd1af7bc07abd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159864033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68c91dd269fc65cf10f87f9683a0436d2126586bc2b41488cec6232111ef86`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:42 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f39a3285608a9349b625a1cc3cd6f71299b7255b9740554a1fd060330fb3a63`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 19.8 MB (19770730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5419c95b19692e62ab878a44092cc0269598aa96e2b0968ba957ce39dd73e54f`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be4aa268e7f22315e0f83fc100b122584fd21b0966eee3b4a18f6e4247c7353`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6b44ea3e86a122339accfa33406dbbfb2020a7928d4d0ac5cf19eb8dacf6a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50c48b04461c051fe17fbfd1b9ecc6ac7cacaff41eccea6b05e5626d884dfed`

```dockerfile
```

-	Layers:
	-	`sha256:e5cd3f38cbae66a83df4d69b27c5a4b0d2c782311a1ce39344da161de1160874`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.2 MB (4229722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad78c2a8f41493503932e97c8012ee5317b08de179f5f6ec209ecf08eda92ab`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json
