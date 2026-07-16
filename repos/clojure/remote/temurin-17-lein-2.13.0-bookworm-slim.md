## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:a46a01c8c7e4fbb51d8547aebac3c7b66f4d1791bc2025563c855aa01c07b908
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

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a335556ea05c8f1de91edb1e8de3d2316c1ae79eccca3022e870dffd502c29a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196714879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4b450bb77be92eedb3e8420525027db289a873d281078525df574a19dca6cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:31:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:45 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:32:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:32:52 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:32:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:32:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a64ad5682087ff7a87845ffd946cb7481a3c668ae5cc72ae3356588114426b7`  
		Last Modified: Thu, 16 Jul 2026 01:33:15 GMT  
		Size: 145.9 MB (145906354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1080a267ebc7cff743677c39ccdeea1ce4b07abe02f0b6dcf1bf7a1a2c878ef`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 18.1 MB (18060226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed8808b2cd994b5fec5fadee3ef73d8f62f789bebf20087af060498686dc63b`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0125b1dce42ff7cca9f0cdcd56ad150a604efcaef0c4b6fdbae0661adb87933`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97ee7b34ad837346cfdab98f8b6004c3049c52ac0abb75ca0a43ccabae0bf780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2750146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53ca01545261fe3e5255a6baff09e27cad624b1ccbeadf69d029d70ba5b8b15`

```dockerfile
```

-	Layers:
	-	`sha256:01cbf15265b9141c3c15ce36c6f70ad1798ffaeda7ca14f095b932127276ec9d`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 2.7 MB (2732373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4da534e7119d7eb5e2173ca560325ea1adae92dd5bf890eab0a20671eeb6b1`  
		Last Modified: Thu, 16 Jul 2026 01:33:09 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e99dc46f5b53f9e8b37c5155e3fc47ef820c25513224190a182290e801bd679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195262982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30488cb0de870958ebc5c6981ac6ed7712e827a2002be648cb8f970ae3c7a2f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:24:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:24:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:24:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:24:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:24:04 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:25:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:25:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:25:12 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:25:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:25:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:25:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:25:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b0890424109ca0baf8b0fb1f1a20d239b7547ecefd5d9ea8aa4bd651b80cfa`  
		Last Modified: Thu, 16 Jul 2026 01:25:33 GMT  
		Size: 144.7 MB (144724278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df18a9f9bee3e5b2afbbeec07351a179bf364f3355dcc93e72a5c442ffb04516`  
		Last Modified: Thu, 16 Jul 2026 01:25:30 GMT  
		Size: 17.9 MB (17905833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe3c7f1390fef18cd8efb2143fe6eb5385da7d78b209525b33c93ab191b421`  
		Last Modified: Thu, 16 Jul 2026 01:25:29 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8f2944f7b5e87d10c1df5eb52978233d376ae74b0c80d0420d943cbbd4794c`  
		Last Modified: Thu, 16 Jul 2026 01:25:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1733588ae394f9527be0a5a404defc31f2cf33fa78f57cedd9e1cf798f52bbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2749882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f9271cd18c5a2f3118aa0ac04f502e3d597c217e633418865152cc7c617863`

```dockerfile
```

-	Layers:
	-	`sha256:1e7285102d3719b288cf65d70fae674b7ccc1f5184aafc7821912a4804a9cf0d`  
		Last Modified: Thu, 16 Jul 2026 01:25:29 GMT  
		Size: 2.7 MB (2731988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2513d255981cca5e3738a19eabc464a1c19c1615ca749d33716dd227f22a717`  
		Last Modified: Thu, 16 Jul 2026 01:25:29 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ddde7ae6928bf1065e7227cb92769b7525277be404a8370250db868a61564c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200621746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3323ac8f6fe3f545b0097e1efe3d608e9728bd1b26e817745ad04e2b7018f0f7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:22:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:22:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:22:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:22:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:22:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:22:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:24:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:24:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:24:51 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:24:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:24:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:24:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:24:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd48f7dfd677759be9a5c18449734e76b926233ded81fcf79f5e94df62f9e8`  
		Last Modified: Tue, 14 Jul 2026 08:25:39 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177600867bca3f6b00af07535a8b6ed87b9354fce67c1dbdd8c8bdcd862c32da`  
		Last Modified: Tue, 14 Jul 2026 08:25:36 GMT  
		Size: 18.3 MB (18263500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230a70482d078561971dca01914cec4caa52a84b9cd7804adf35ce93b8e78665`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2834add1398ad8bb63cd0a03b5adf6142a5c1bdcec171dfff4227633d4808f84`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:240c90615c9fa4a6f3c9f4ff75fbd67959884de2221ec811e93564db3dcd783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2752023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5c49e0204c16853622032182496d6082fe36c6d2bfdd38eef6460238028295`

```dockerfile
```

-	Layers:
	-	`sha256:f5896b985163127e88dcb18d3e18259912986e50eeccbf4e68603a51861131d1`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 2.7 MB (2734206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:612e8cd69fa51320672f2c2036c62e6630ecaa9a070d33423d07590573eed8e0`  
		Last Modified: Tue, 14 Jul 2026 08:25:35 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c8e449d3765d4b2d667a1b88d280fe45058325dcc37ecc724c534bbf2123f0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185039250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76952c96143cf3b6d286f7a0d5d286da2d4993e14676146b3a8543e952b24e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:46:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:46:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:46:16 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:47:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:47:17 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:47:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:47:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:47:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:47:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bd7efae395f960216ece59caeedc6ca70d3c2c8ec65156bfbcf2900608d3b5`  
		Last Modified: Thu, 16 Jul 2026 01:47:46 GMT  
		Size: 135.9 MB (135910506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c15c54fb67295d7051010737f20dec59071978c476e8ca20d036a0e352b0237`  
		Last Modified: Thu, 16 Jul 2026 01:47:43 GMT  
		Size: 17.7 MB (17724835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b129145e970849389d77cfb30076e5953655746ff367a956acdd77cf6cc02bf`  
		Last Modified: Thu, 16 Jul 2026 01:47:43 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946f7912cbf288b37f95cfdf7510f894736d3f6f2e40d4b4724f8c4e1b11fc19`  
		Last Modified: Thu, 16 Jul 2026 01:47:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97c3cc56b3c97ebca360e8cfa3ca9cd4535986f7bc97ba2bc67105b77ec073b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2741960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596ff79996ca1217b5463efa9b593fd9e74c82c922d062d1047ad91fdd333212`

```dockerfile
```

-	Layers:
	-	`sha256:9fa9f9c86aa0dd6a4525a81023a9563a3e908ac61d37ab891e377e4863cfdfb7`  
		Last Modified: Thu, 16 Jul 2026 01:47:43 GMT  
		Size: 2.7 MB (2724187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2fc44f5d8c23d8d36354c3a9aaec5c3c5c24ffd89c5719fe1ba141b5bb2a19`  
		Last Modified: Thu, 16 Jul 2026 01:47:43 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
