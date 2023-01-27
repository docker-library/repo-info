## `api-firewall:latest`

```console
$ docker pull api-firewall@sha256:2ce45ee95bf2339fc177dc0a3ebb08f68d806cc426184cbc1c3df6a10197b638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `api-firewall:latest` - linux; amd64

```console
$ docker pull api-firewall@sha256:d7263b87ddc6e19758a9860101169ac076a5c180bbbc59471a98ee67006a7228
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8914209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a894bb46415b9065e5e8fe22853fc62a6de0726de41c8021e9827aadf6dde74c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:32:57 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 09 Jan 2023 17:32:57 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 17:32:58 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall
# Mon, 09 Jan 2023 17:32:58 GMT
ENV APIFIREWALL_VERSION=v0.6.10
# Mon, 09 Jan 2023 17:33:00 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='774d29f694142984e11e31443398a973a882d19c491e06390de13f0ceabd04a4';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='6ef69fbafb2503c7b01681d39138ea1abe99da910912fde33b1c317a819d2804';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='a9ccd2757bb4703b70aeea44b8aa992ce0dc1025d36accf311a023d87b1b6f57';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v
# Mon, 09 Jan 2023 17:33:01 GMT
COPY file:d278e8d8f9cc8e98b02127f87703b4379a8a938a57e107aac5dd34c716907f87 in /opt/api-firewall/ 
# Mon, 09 Jan 2023 17:33:01 GMT
USER api-firewall
# Mon, 09 Jan 2023 17:33:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:33:01 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d397aab61b2527713aaccc65f6b43807c3d55391c13d93a3ac4fecc8ce8a41b1`  
		Last Modified: Mon, 09 Jan 2023 17:33:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061d34c05de4c63e866bcc27c85ec709c9456bd1fb9f65542e3567a36c7dcffc`  
		Last Modified: Mon, 09 Jan 2023 17:33:09 GMT  
		Size: 5.5 MB (5542025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f161f78f06155467bbe7c57f9a0a5edb4a70db2e20bf73ac8abaac9c79f7faf`  
		Last Modified: Mon, 09 Jan 2023 17:33:08 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `api-firewall:latest` - linux; arm64 variant v8

```console
$ docker pull api-firewall@sha256:b9caf9253d8344ba3c0a41bbf5327a7e4de27cedc67073f6613c21af65535357
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8428273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2077aff787aeda647bc0782b60a7130a437391e2850af67624e0355f0a71d14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:26:08 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 09 Jan 2023 17:26:08 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 17:26:09 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall
# Mon, 09 Jan 2023 17:26:09 GMT
ENV APIFIREWALL_VERSION=v0.6.10
# Mon, 09 Jan 2023 17:26:11 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='774d29f694142984e11e31443398a973a882d19c491e06390de13f0ceabd04a4';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='6ef69fbafb2503c7b01681d39138ea1abe99da910912fde33b1c317a819d2804';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='a9ccd2757bb4703b70aeea44b8aa992ce0dc1025d36accf311a023d87b1b6f57';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v
# Mon, 09 Jan 2023 17:26:11 GMT
COPY file:d278e8d8f9cc8e98b02127f87703b4379a8a938a57e107aac5dd34c716907f87 in /opt/api-firewall/ 
# Mon, 09 Jan 2023 17:26:11 GMT
USER api-firewall
# Mon, 09 Jan 2023 17:26:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:26:12 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f4951018ec5537e290557997acfb77cdf089da3170d574a48a7634929eecef`  
		Last Modified: Mon, 09 Jan 2023 17:26:20 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d9b7c4d0b6ac3e929c88f440bba2f78fa07c2a6960f3e9d7235222c88747ec`  
		Last Modified: Mon, 09 Jan 2023 17:26:21 GMT  
		Size: 5.2 MB (5167479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c0164b5c86b57ded5f2af81455928be6b584a4b73f30256f7955f74c2d0a9d`  
		Last Modified: Mon, 09 Jan 2023 17:26:20 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `api-firewall:latest` - linux; 386

```console
$ docker pull api-firewall@sha256:92ebad752ca0a7cd2ad1d05ae8f65c695b63af8d6f57a1de40fb7a91ef1f0876
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8812308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5d761910e7cca9f91a3545891dc92a2e8f28ca4dba90a43cf323f7e2f960f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:21:11 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 09 Jan 2023 17:21:12 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 17:21:13 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall
# Mon, 09 Jan 2023 17:21:14 GMT
ENV APIFIREWALL_VERSION=v0.6.10
# Mon, 09 Jan 2023 17:21:18 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='774d29f694142984e11e31443398a973a882d19c491e06390de13f0ceabd04a4';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='6ef69fbafb2503c7b01681d39138ea1abe99da910912fde33b1c317a819d2804';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='a9ccd2757bb4703b70aeea44b8aa992ce0dc1025d36accf311a023d87b1b6f57';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v
# Mon, 09 Jan 2023 17:21:19 GMT
COPY file:d278e8d8f9cc8e98b02127f87703b4379a8a938a57e107aac5dd34c716907f87 in /opt/api-firewall/ 
# Mon, 09 Jan 2023 17:21:19 GMT
USER api-firewall
# Mon, 09 Jan 2023 17:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 17:21:21 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7a9a600094ea695b05ceac5e870c910bb45398584b217d257bc84a900dfe27`  
		Last Modified: Mon, 09 Jan 2023 17:21:34 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f533bf294a675cc330c4582fc3778d1efd4a92835c3a18c45a5e0e66aaca395`  
		Last Modified: Mon, 09 Jan 2023 17:21:34 GMT  
		Size: 5.4 MB (5402432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c398abc50cd458e74fba5ce9cc57205bd3fdc106cef7cca2265289abafd6d3b`  
		Last Modified: Mon, 09 Jan 2023 17:21:33 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
